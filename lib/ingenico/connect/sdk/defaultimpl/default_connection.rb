require 'securerandom'
require 'uri'
require 'httpclient'

# @private :nodoc: this is not our class
class HTTPClient
  # (monkey) patch to gain access to the session pool size in HTTPClient
  def session_count
    sess_pool = @session_manager.instance_variable_get(:@sess_pool)
    sess_pool.size
  end
end

module Ingenico::Connect::SDK
  module DefaultImpl

    class DefaultConnection < PooledConnection

      CONTENT_TYPE = 'Content-Type'
      JSON_CONTENT_TYPE = 'application/json'

      # Initialized using a hash containing the following parameters:
      # connect_timeout::     Connection timeout in seconds.
      # socket_timeout::      Socket timeout in seconds.
      # max_connections::     Number of connections kept alive in the thread pool.
      #                       Uses {Ingenico::Connect::SDK::CommunicatorConfiguration.DEFAULT_MAX_CONNECTIONS} if not given.
      # proxy_configuration:: {Ingenico::Connect::SDK::ProxyConfiguration} object that stores the proxy to use.
      #                       If not given the system default proxy is used;
      #                       if there is no system default proxy set either, no proxy is used.
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
      end

      private

      # Create a HTTPClient instance that uses @proxy_configuration or the system proxy if @proxy_configuration is not set
      def create_http_client
        if @proxy_configuration
          httpclient = HTTPClient.new(@proxy_configuration.proxy_uri)
          httpclient.set_proxy_auth(@proxy_configuration.username, @proxy_configuration.password)
          httpclient
        else # use system settings
          proxy_string = ENV['https_proxy'] || ENV['http_proxy']
          # proxy string format = 'http://username:password@hostname:port'
          proxy_string =~ %r(https?//(?<username>[^:]):(?<password>[^@])@.*)
          username = $1
          password = $2
          httpclient = HTTPClient.new(proxy_string)
          httpclient.set_proxy_auth(username, password) unless username.nil? || password.nil?
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

      # Performs a GET request to the GlobalCollect platform
      # @see request
      def get(uri, request_headers)
        request('get', uri, request_headers)
      end

      # Performs a DELETE request to the GlobalCollect platform
      # @see request
      def delete(uri, request_headers)
        request('delete', uri, request_headers)
      end

      # Performs a POST request to the GlobalCollect platform
      # @see request
      def post(uri, request_headers, body)
        request('post', uri, request_headers, body)
      end

      # Performs a PUT request to the GlobalCollect platform
      # @see request
      def put(uri, request_headers, body)
        request('put', uri, request_headers, body)
      end

      # performs a HTTP request and returns the response as an {Ingenico::Connect::SDK::Response} object.
      # Also ensures the request is logged when sent and its response is logged when received.
      # Raises {Ingenico::Connect::SDK::CommunicationException} when communication with the GlobalCollect platform was not successful.
      # method::          'GET', 'DELETE', 'POST' or 'PUT' depending on the HTTP method being used.
      # uri::             Full URI of the location the request is targeted at, including query parameters.
      # request_headers:: {Ingenico::Connect::SDK::RequestHeader} list of headers that should be used as HTTP headers in the request.
      # body::            Request body as a String.
      def request(method, uri, request_headers, body=nil)
        request_headers = convert_from_sdk_headers(request_headers)
        request_id = SecureRandom.uuid
        request_headers[CONTENT_TYPE] = JSON_CONTENT_TYPE if body
        content_type = request_headers[CONTENT_TYPE]
        info = { headers: request_headers, content_type: content_type }
        info[:body] = body unless body.nil?
        log_request(request_id, method.upcase, uri, info)

        start_time = Time.now
        begin
          response = if body
                       @http_client.send(method, uri, header: request_headers, body: body)
                     else
                       @http_client.send(method, uri, header: request_headers)
                     end
        rescue HTTPClient::TimeoutError => e
          log_error(request_id, start_time, e)
          raise Ingenico::Connect::SDK::CommunicationException.new(e)
        rescue HTTPClient::KeepAliveDisconnected, HTTPClient::RetryableResponse => e  # retry these?
          log_error(request_id, start_time, e)
          raise Ingenico::Connect::SDK::CommunicationException.new(e)
        rescue => e
          log_error(request_id, start_time, e)
          raise Ingenico::Connect::SDK::CommunicationException.new(e)
        end

        log_response(request_id, response.status, start_time,
                     headers: response.headers, body: response.body,
                     content_type: response.content_type)
        convert_to_sdk_response(response)
      end

      # logging code

      # Enables logging outgoing requests and incoming responses by registering the _communicator_logger_.
      # Note that only one logger can be registered at a time and calling _enable_logging_
      # a second time will override the old logger instance with the new one.
      #
      # communicator_logger:: The {Ingenico::Connect::SDK::Logging::CommunicatorLogger} the requests and responses are logged to
      #
      def enable_logging(communicator_logger)
        raise ArgumentError.new('communicatorLogger is required') unless communicator_logger
        @communicator_logger = communicator_logger
      end

      # Disables logging by unregistering any previous logger that might be registered.
      def disable_logging
        @communicator_logger = nil
      end

      private

      # Converts a {Ingenico::Connect::SDK::RequestHeader} list headers to a hash
      def convert_from_sdk_headers(headers)
        hash = {}
        headers.each { |h| hash[h.name] =  h.value }
        hash
      end

      # Converts a hash to a {Ingenico::Connect::SDK::ResponseHeader} list
      def convert_to_sdk_headers(headers)
        arr = []
        headers.each { |k, v| arr << Ingenico::Connect::SDK::ResponseHeader.new(k, v) }
        arr
      end

      # converts a HTTPClient response to a {Ingenico::Connect::SDK::Response}
      def convert_to_sdk_response(response)
        Ingenico::Connect::SDK::Response.new(response.status,
                         response.body,
                         convert_to_sdk_headers(response.headers))
      end

      def log_request(requestId, method, uri, args={})
        return unless @communicator_logger

        headers, body, content_type = args[:headers], args[:body], args[:content_type]
        log_msg_builder = Ingenico::Connect::SDK::Logging::RequestLogMessageBuilder.new(requestId, method, uri)
        headers.each { |k, v| log_msg_builder.add_headers(k, v) } if headers
        log_msg_builder.set_body(body, content_type)

        begin
          @communicator_logger.log(log_msg_builder.get_message)
        rescue => e
          @communicator_logger.log("An error occurred trying to log request #{requestId}", e)
        end
      end

      def log_response(requestId, status_code, start_time, args={})
        return unless @communicator_logger

        duration = (Time.now - start_time) * 1000 # in millisecs
        headers, body, content_type = args[:headers], args[:body], args[:content_type]
        log_msg_builder = Ingenico::Connect::SDK::Logging::ResponseLogMessageBuilder.new(requestId, status_code, duration)
        headers.each { |k, v| log_msg_builder.add_headers(k, v) } if headers
        log_msg_builder.set_body(body, content_type)

        begin
          @communicator_logger.log(log_msg_builder.get_message)
        rescue => e
          @communicator_logger.log("An error occurred trying to log response #{requestId}", e)
        end
      end

      def log_error(requestId, start_time, thrown)
        return unless @communicator_logger
        duration = (Time.now - start_time) * 1000 # in millisecs
        @communicator_logger.log("Error occurred for outgoing request (requestId='#{requestId}', #{duration} ms)", thrown)
      end
    end
  end
end
