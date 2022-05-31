require 'securerandom'
require 'uri'
require 'httpclient'

# @private :nodoc: this is not our class
module RefineHTTPClient
  refine HTTPClient do
    # (monkey) patch to gain access to the session pool size in HTTPClient
    def session_count
      sess_pool = @session_manager.instance_variable_get(:@sess_pool)
      sess_pool.size
    end
  end
end

module Ingenico::Connect::SDK
  module DefaultImpl
    class DefaultConnection < PooledConnection
      include Ingenico::Connect::SDK::Logging::Obfuscation::ObfuscationCapable
      using RefineHTTPClient

      CONTENT_TYPE = 'Content-Type'.freeze
      JSON_CONTENT_TYPE = 'application/json'.freeze

      # @param args [Hash] the parameters to initialize the connection with
      # @option args [Integer] :connect_timeout connection timeout in seconds.
      # @option args [Integer] :socket_timeout socket timeout in seconds.
      # @option args [Integer] :max_connections number of connections kept alive in the thread pool.
      #              Uses {Ingenico::Connect::SDK::CommunicatorConfiguration.DEFAULT_MAX_CONNECTIONS} if not given.
      # @option args [Ingenico::Connect::SDK::ProxyConfiguration] :proxy_configuration object that stores the proxy to use.
      #              If not given the system default proxy is used;
      #              if there is no system default proxy set either, no proxy is used.
      def initialize(args)
        raise ArgumentError unless args.is_a? Hash

        # Set timeouts to nil if they are negative
        @connect_timeout = args[:connect_timeout]
        @connect_timeout = nil unless @connect_timeout.nil? || @connect_timeout > 0
        @socket_timeout = args[:socket_timeout]
        @socket_timeout = nil unless @socket_timeout.nil? || @socket_timeout > 0
        @max_connections = args[:max_connections] || CommunicatorConfiguration.DEFAULT_MAX_CONNECTIONS
        @proxy_configuration = args[:proxy_configuration]

        # HTTPClient provides the following features:
        # 1) thread safe, an instance can be used by multiple threads without
        # explicit synchronization
        # 2) use persistent connection if HTTP 1.1 is supported. The connection
        # will be left open until explicitly closed or keep_alive_timeout
        # 3) a built-in connection pool with no limit for max connections
        @http_client = create_http_client
        @http_client.connect_timeout = @connect_timeout
        @http_client.send_timeout = @socket_timeout
        @http_client.receive_timeout = @socket_timeout

        @body_obfuscator = Ingenico::Connect::SDK::Logging::Obfuscation::BodyObfuscator.default_obfuscator
        @header_obfuscator = Ingenico::Connect::SDK::Logging::Obfuscation::HeaderObfuscator.default_obfuscator
      end

      private

      # Create a HTTPClient instance that uses @proxy_configuration or the system proxy if @proxy_configuration is not set
      def create_http_client
        if @proxy_configuration
          httpclient = HTTPClient.new(@proxy_configuration.proxy_uri)
          httpclient.set_proxy_auth(@proxy_configuration.username, @proxy_configuration.password)
          httpclient.force_basic_auth = true unless @proxy_configuration.username.nil? || @proxy_configuration.password.nil?
          httpclient
        else # use system settings
          proxy_string = ENV['https_proxy'] || ENV['http_proxy']
          # proxy string format = 'http://username:password@hostname:port'
          proxy_string =~ %r{https?//(?<username>[^:]):(?<password>[^@])@.*}
          username = Regexp.last_match(1)
          password = Regexp.last_match(2)
          httpclient = HTTPClient.new(proxy_string)
          httpclient.set_proxy_auth(username, password) unless username.nil? || password.nil?
          httpclient.force_basic_auth = true unless username.nil? || password.nil?
          httpclient
        end
      end

      public

      # Closes all connections idle for longer than _idle_time_ seconds.
      # In addition, the keep_alive_timeout is set to _idle_time_
      # so any future connections idle for longer than _idle_time_ seconds will also be closed.
      def close_idle_connections(idle_time) # in sec
        @http_client.keep_alive_timeout = idle_time # set timeout value
        close_expired_connections
      end

      # HTTPClient automatically closes expired connections so _close_expired_connections_ is a no-operation.
      def close_expired_connections
        # By default the keep alive timeout is 15 sec, which is the HTTP 1.1
        # standard. To change the value, use keep_alive_timeout= method
        # do nothing, handled by HTTPClient
      end

      # Frees all networking resources used.
      def close
        @http_client.reset_all
      end

      # Returns the number of open connections
      def session_count
        @http_client.session_count
      end

      # Performs a GET request to the Ingenico ePayments platform
      # @see request
      def get(uri, request_headers)
        request('get', uri, request_headers) do |response_status_code, response_headers, response_body|
          yield response_status_code, response_headers, response_body
        end
      end

      # Performs a DELETE request to the Ingenico ePayments platform
      # @see request
      def delete(uri, request_headers)
        request('delete', uri, request_headers) do |response_status_code, response_headers, response_body|
          yield response_status_code, response_headers, response_body
        end
      end

      # Performs a POST request to the Ingenico ePayments platform
      # @see request
      def post(uri, request_headers, body)
        request('post', uri, request_headers, body) do |response_status_code, response_headers, response_body|
          yield response_status_code, response_headers, response_body
        end
      end

      # Performs a PUT request to the Ingenico ePayments platform
      # @see request
      def put(uri, request_headers, body)
        request('put', uri, request_headers, body) do |response_status_code, response_headers, response_body|
          yield response_status_code, response_headers, response_body
        end
      end

      # Performs a HTTP request and yields the response as the status code, headers and body.
      # Also ensures the request is logged when sent and its response is logged when received.
      #
      # @param method          [String] 'GET', 'DELETE', 'POST' or 'PUT' depending on the HTTP method being used.
      # @param uri             [URI::HTTP] full URI of the location the request is targeted at, including query parameters.
      # @param request_headers [Array<Ingenico::Connect::SDK::RequestHeader>] list of headers that should be used as HTTP headers in the request.
      # @param body            [String, Ingenico::Connect::SDK::MultipartFormDataObject] request body.
      # @yield (Integer, Array<Ingenico::Connect::SDK::ResponseHeader>, IO) The status code, headers and body of the response.
      # @raise [Ingenico::Connect::SDK::CommunicationException] when communication with the Ingenico ePayments platform was not successful.
      def request(method, uri, request_headers, body = nil)
        request_headers = convert_from_sdk_headers(request_headers)
        request_id = SecureRandom.uuid
        content_type = request_headers[CONTENT_TYPE]

        info = { headers: request_headers, content_type: content_type }
        info[:body] = body unless body.nil?

        log_request(request_id, method.upcase, uri, info)

        start_time = Time.now
        begin
          response_headers = nil
          response_status_code = nil
          response_content_type = nil
          response_body = ''

          if body.is_a? Ingenico::Connect::SDK::MultipartFormDataObject
            multipart_request(method, uri, request_headers, body) do |status_code, headers, r_content_type, r_body|
              response_headers = headers
              response_status_code = status_code
              response_content_type = r_content_type
              unless binary_content_type? response_content_type
                response_body = r_body.read.force_encoding('UTF-8')
                r_body = StringIO.new(response_body)
              end

              yield status_code, headers, r_body
            end
          else
            raw_request(method, uri, request_headers, body) do |status_code, headers, r_content_type, r_body|
              response_headers = headers
              response_status_code = status_code
              response_content_type = r_content_type
              unless binary_content_type? response_content_type
                response_body = r_body.read.force_encoding('UTF-8')
                r_body = StringIO.new(response_body)
              end

              yield status_code, headers, r_body
            end
          end

          log_response(request_id, response_status_code, start_time,
                       headers: response_headers, body: response_body,
                       content_type: response_content_type)
        rescue HTTPClient::TimeoutError => e
          log_error(request_id, start_time, e)
          raise Ingenico::Connect::SDK::CommunicationException, e
        rescue HTTPClient::KeepAliveDisconnected, HTTPClient::RetryableResponse => e # retry these?
          log_error(request_id, start_time, e)
          raise Ingenico::Connect::SDK::CommunicationException, e
        rescue StandardError => e
          log_error(request_id, start_time, e)
          raise Ingenico::Connect::SDK::CommunicationException, e
        end
      end

      # logging code

      # Sets the current body obfuscator to use.
      # @param body_obfuscator [Ingenico::Connect::SDK::Logging::Obfuscation::BodyObfuscator]
      def set_body_obfuscator(body_obfuscator)
        raise ArgumentError, 'body_obfuscator is required' unless body_obfuscator

        @body_obfuscator = body_obfuscator
      end

      # Sets the current header obfuscator to use.
      # @param header_obfuscator [Ingenico::Connect::SDK::Logging::Obfuscation::HeaderObfuscator]
      def set_header_obfuscator(header_obfuscator)
        raise ArgumentError, 'header_obfuscator is required' unless header_obfuscator

        @header_obfuscator = header_obfuscator
      end

      # Enables logging outgoing requests and incoming responses by registering the _communicator_logger_.
      # Note that only one logger can be registered at a time and calling _enable_logging_
      # a second time will override the old logger instance with the new one.
      #
      # @param communicator_logger [Ingenico::Connect::SDK::Logging::CommunicatorLogger] the communicator logger the requests and responses are logged to
      def enable_logging(communicator_logger)
        raise ArgumentError, 'communicator_logger is required' unless communicator_logger

        @communicator_logger = communicator_logger
      end

      # Disables logging by unregistering any previous logger that might be registered.
      def disable_logging
        @communicator_logger = nil
      end

      private

      # Converts a {Ingenico::Connect::SDK::RequestHeader} list headers to a hash
      def convert_from_sdk_headers(headers)
        headers.each_with_object({}) { |h, hash| hash[h.name] = h.value }
      end

      # Converts a hash to a {Ingenico::Connect::SDK::ResponseHeader} list
      def convert_to_sdk_response_headers(headers)
        arr ||= []
        headers.each { |k, v| arr << Ingenico::Connect::SDK::ResponseHeader.new(k, v) }
        arr
      end

      def log_request(request_id, method, uri, args = {})
        return unless @communicator_logger

        headers = args[:headers]
        body = args[:body]
        content_type = args[:content_type]
        log_msg_builder = Ingenico::Connect::SDK::Logging::RequestLogMessageBuilder.new(request_id, method, uri,
                                                                                        @body_obfuscator,
                                                                                        @header_obfuscator)
        headers.each { |k, v| log_msg_builder.add_headers(k, v) } if headers

        if binary?(headers)
          log_msg_builder.set_body('<binary content>', content_type)
        else
          log_msg_builder.set_body(body, content_type)
        end

        begin
          @communicator_logger.log(log_msg_builder.get_message)
        rescue StandardError => e
          @communicator_logger.log("An error occurred trying to log request #{request_id}", e)
        end
      end

      # Creates the log_response stream
      # both based on whether or not it is binary and on the rest of the response
      def log_response(request_id, status_code, start_time, args = {})
        return unless @communicator_logger

        duration      = (Time.now - start_time) * 1000 # in milliseconds
        headers       = args[:headers]
        body          = args[:body] unless args[:body].nil?
        content_type  = args[:content_type]

        log_msg_builder = Ingenico::Connect::SDK::Logging::ResponseLogMessageBuilder.new(request_id, status_code, duration,
                                                                                         @body_obfuscator,
                                                                                         @header_obfuscator)
        unless headers.nil?
          headers = convert_from_sdk_headers(headers)
          headers.each do |key, value|
            log_msg_builder.add_headers(key, value)
          end
        end

        if binary_content_type?(content_type)
          log_msg_builder.set_body('<binary content>', content_type)
        else
          log_msg_builder.set_body(body, content_type)
        end

        begin
          @communicator_logger.log(log_msg_builder.get_message)
        rescue StandardError => e
          @communicator_logger.log("An error occurred trying to log response #{request_id}", e)
        end
      end

      def log_error(request_id, start_time, thrown)
        return unless @communicator_logger

        duration = (Time.now - start_time) * 1000 # in millisecs
        @communicator_logger.log("Error occurred for outgoing request (requestId='#{request_id}', #{duration} ms)", thrown)
      end

      # @param headers [Hash]
      def binary?(headers)
        unless headers.nil?
          content_type = nil
          headers.each { |k, v| content_type = v if k.casecmp(CONTENT_TYPE).zero? }

          binary_content_type?(content_type)
        end
      end

      # @param content_type [String]
      def binary_content_type?(content_type)
        unless content_type.nil?
          content_type = content_type.downcase
          return !content_type.start_with?('text/') &&
                 !content_type.include?('json') &&
                 !content_type.include?('xml')
        end
        false
      end

      # Makes a request using the specified method
      #
      # Yields a status code, an array of {Ingenico::Connect::SDK::ResponseHeader},
      # the content_type and body
      def raw_request(method, uri, headers, body = nil)
        connection = if body
                       @http_client.send(method + '_async', uri, body: body, header: headers)
                     else
                       @http_client.send(method + '_async', uri, header: headers)
                     end

        response = connection.pop
        pipe = response.content
        response_headers = convert_to_sdk_response_headers(response.headers)

        begin
          yield response.status_code, response_headers, response.content_type, pipe
        ensure
          pipe.close
        end
      end

      # Makes a request using the specified method
      #
      # Yields a status code, an array of {Ingenico::Connect::SDK::ResponseHeader},
      # the content_type and body
      def multipart_request(method, uri, headers, body = nil)
        unless body.is_a? Ingenico::Connect::SDK::MultipartFormDataObject
          raise ArgumentError, 'body should be a MultipartFormDataObject'
        end

        if method != 'post' && method != 'put'
          raise ArgumentError, "method #{method} is not supported"
        end

        connection = @http_client.send method + '_async',
                                       uri,
                                       body: multipart_request_body(body),
                                       header: headers

        response = connection.pop
        pipe = response.content
        response_headers = convert_to_sdk_response_headers(response.headers)

        begin
          yield response.status_code, response_headers, response.content_type, pipe
        ensure
          pipe.close
        end
      end

      # Creates a request body for the multipart request
      def multipart_request_body( body )
        request_body = []
        body.files.each do |k, v|
          request_body.push :content => v.content,
                            'Content-Type' => v.content_type,
                            'Content-Disposition' => "form-data; name=\"#{k}\"; filename=\"#{v.file_name}\"",
                            'Content-Transfer-Encoding' => 'binary'
        end

        body.values.each do |k, v|
          request_body << { :content => v,
                            'Content-Disposition' => "form-data; name=\"#{k}\"" }
        end
        request_body
      end
    end
  end
end
