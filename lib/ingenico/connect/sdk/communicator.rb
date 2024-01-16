require 'uri'
require 'ingenico/connect/sdk/communication_exception'
require 'ingenico/connect/sdk/logging/logging_capable'
require 'ingenico/connect/sdk/logging/obfuscation/obfuscation_capable'
require 'ingenico/connect/sdk/not_found_exception'
require 'ingenico/connect/sdk/pooled_connection'
require 'ingenico/connect/sdk/multipart_form_data_object'
require 'ingenico/connect/sdk/multipart_form_data_request'
require 'ingenico/connect/sdk/request_header'
require 'ingenico/connect/sdk/response_exception'
require 'ingenico/connect/sdk/response_header'

module Ingenico
  module Connect
    module SDK
      # Class responsible for facilitating communication with the Ingenico ePayments platform.
      # It combines the following classes to provide communication functionality:
      #
      # session::     {Ingenico::Connect::SDK::Session} that stores data for network communication and facilitates network communication
      # marshaller::  {Ingenico::Connect::SDK::Marshaller} that is used to marshal and unmarshal data to and from JSON format
      #
      # @attr_reader [Ingenico::Connect::SDK::Marshaller] marshaller A Marshaller instance used by the communicator for serializing/deserializing to/from JSON
      #
      class Communicator
        include Logging::LoggingCapable
        include Logging::Obfuscation::ObfuscationCapable

        # Creates a new Communicator based on a session and marshaller.
        #
        # @param session    [Ingenico::Connect::SDK::Session] session that stores data for network communication and facilitates network communication
        # @param marshaller [Ingenico::Connect::SDK::Marshaller] used to marshal and unmarshal data to and from JSON format
        #
        def initialize(session, marshaller)
          raise ArgumentError('session is required') if session.nil?
          raise ArgumentError('marshaller is required') if marshaller.nil?

          @session = session
          @marshaller = marshaller
        end

        # Performs a GET request to the Ingenico ePayments platform and returns the response as the given response type.
        #
        # @param relative_path      [String] path relative to the session's API endpoint
        # @param request_headers    [Array<Ingenico::Connect::SDK::RequestHeader>] optional array of request headers
        # @param request_parameters [Ingenico::Connect::SDK::ParamRequest] optional request parameters
        # @param response_type      [Type] the response type.
        # @param context            [Ingenico::Connect::SDK::CallContext] optional call context.
        # @return the response of the GET request as the given response type
        # @raise [Ingenico::Connect::SDK::ResponseException] if the request could not be fulfilled successfully.
        #        This occurs for example if the request is not authenticated correctly
        # @raise [Ingenico::Connect::SDK::NotFoundException] if the requested resource is not found
        # @raise [Ingenico::Connect::SDK::CommunicationException] if there is an error in communicating with the Ingenico ePayments platform.
        #        This occurs for example if a timeout occurs.
        def get(relative_path, request_headers, request_parameters, response_type, context)
          connection = @session.connection
          request_parameter_list = request_parameters && request_parameters.to_request_parameters
          uri = to_absolute_uri(relative_path, request_parameter_list)

          request_headers = [] if request_headers.nil?
          add_generic_headers('GET', uri, request_headers, context)

          response_status_code, response_headers, response_body = nil
          connection.get(uri, request_headers) do |status_code, headers, content|
            response_status_code = status_code
            response_headers = headers
            response_body = content.read.force_encoding('UTF-8')
          end
          process_response(response_body, response_status_code, response_headers, response_type, relative_path, context)
        end

        # Performs a GET request to the Ingenico ePayments platform and yields the response as the headers and body.
        #
        # @param relative_path      [String] Path relative to the session's API endpoint
        # @param request_headers    [Array<Ingenico::Connect::SDK::RequestHeader>] Optional array of request headers
        # @param request_parameters [Ingenico::Connect::SDK::ParamRequest] Optional request parameters
        # @param context            [Ingenico::Connect::SDK::CallContext] Optional call context.
        # @yield [Array<Ingenico::Connect::SDK::ResponseHeader>, IO] The response headers and body.
        # @raise [Ingenico::Connect::SDK::ResponseException] if the request could not be fulfilled successfully.
        #        This occurs for example if the request is not authenticated correctly
        # @raise [Ingenico::Connect::SDK::NotFoundException] if the requested resource is not found
        # @raise [Ingenico::Connect::SDK::CommunicationException] if there is an error in communicating with the Ingenico ePayments platform.
        #        This occurs for example if a timeout occurs.
        def get_with_binary_response(relative_path, request_headers, request_parameters, context)
          connection = @session.connection
          request_parameter_list = request_parameters && request_parameters.to_request_parameters
          uri = to_absolute_uri(relative_path, request_parameter_list)

          request_headers = [] if request_headers.nil?
          add_generic_headers('GET', uri, request_headers, context)

          response_status_code, response_headers, response_body = nil
          connection.get(uri, request_headers) do |status_code, headers, content|
            response_status_code = status_code
            response_headers = headers
            response_body = process_binary_response(status_code, content, headers, context) do |h, c|
              yield h, c
            end
          end
          throw_exception_if_necessary(response_body, response_status_code, response_headers, relative_path)
        end

        # Performs a DELETE request to the Ingenico ePayments platform and returns the response as the given response type.
        #
        # @param relative_path      [String] Path relative to the session's API endpoint
        # @param request_headers    [Array<Ingenico::Connect::SDK::RequestHeader>] Optional array of request headers
        # @param request_parameters [Ingenico::Connect::SDK::ParamRequest] Optional request parameters
        # @param response_type      [Type] The response type.
        # @param context            [Ingenico::Connect::SDK::CallContext] Optional call context.
        # @return The response of the DELETE request as the given response type
        # @raise [Ingenico::Connect::SDK::ResponseException] if the request could not be fulfilled successfully.
        #        This occurs for example if the request is not authenticated correctly
        # @raise [Ingenico::Connect::SDK::NotFoundException] if the requested resource is not found
        # @raise [Ingenico::Connect::SDK::CommunicationException] if there is an error in communicating with the Ingenico ePayments platform.
        #        This occurs for example if a timeout occurs.
        def delete(relative_path, request_headers, request_parameters, response_type, context)
          connection = @session.connection
          request_parameter_list = request_parameters && request_parameters.to_request_parameters
          uri = to_absolute_uri(relative_path, request_parameter_list)
          request_headers = [] if request_headers.nil?
          add_generic_headers('DELETE', uri, request_headers, context)

          response_status_code, response_headers, response_body = nil
          connection.delete(uri, request_headers) do |status_code, headers, content|
            response_status_code = status_code
            response_headers = headers
            response_body = content.read.force_encoding('UTF-8')
          end
          process_response(response_body, response_status_code, response_headers, response_type, relative_path, context)
        end

        # Performs a DELETE request to the Ingenico ePayments platform and yields the response as the headers and body.
        #
        # @param relative_path      [String] Path relative to the session's API endpoint
        # @param request_headers    [Array<Ingenico::Connect::SDK::RequestHeader>] Optional array of request headers
        # @param request_parameters [Ingenico::Connect::SDK::ParamRequest] Optional request parameters
        # @param context            [Ingenico::Connect::SDK::CallContext] Optional call context.
        # @yield [Array<Ingenico::Connect::SDK::ResponseHeader>, IO] The response headers and body.
        # @raise [Ingenico::Connect::SDK::ResponseException] if the request could not be fulfilled successfully.
        #        This occurs for example if the request is not authenticated correctly
        # @raise [Ingenico::Connect::SDK::NotFoundException] if the requested resource is not found
        # @raise [Ingenico::Connect::SDK::CommunicationException] if there is an error in communicating with the Ingenico ePayments platform.
        #        This occurs for example if a timeout occurs.
        def delete_with_binary_response(relative_path, request_headers, request_parameters, context)
          connection = @session.connection
          request_parameter_list = request_parameters && request_parameters.to_request_parameters
          uri = to_absolute_uri(relative_path, request_parameter_list)
          request_headers = [] if request_headers.nil?
          add_generic_headers('DELETE', uri, request_headers, context)

          response_status_code, response_headers, response_body = nil
          connection.delete(uri, request_headers) do |status_code, headers, content|
            response_status_code = status_code
            response_headers = headers
            response_body = process_binary_response(status_code, content, headers, context) do |h, c|
              yield h, c
            end
          end
          throw_exception_if_necessary(response_body, response_status_code, response_headers, relative_path)
        end

        # Performs a POST request to the Ingenico ePayments platform and returns the response as the given response type.
        #
        # @param relative_path      [String] Path relative to the session's API endpoint
        # @param request_headers    [Array<Ingenico::Connect::SDK::RequestHeader>] Optional array of request headers
        # @param request_parameters [Ingenico::Connect::SDK::ParamRequest] Optional request parameters
        # @param request_body       [Ingenico::Connect::SDK::DataObject, Ingenico::Connect::SDK::MultipartFormDataObject, Ingenico::Connect::SDK::MultipartFormDataRequest]
        #                           The optional request body
        # @param response_type      [Type] The response type.
        # @param context            [Ingenico::Connect::SDK::CallContext] Optional call context.
        # @return The response of the POST request as the given response type
        # @raise [Ingenico::Connect::SDK::ResponseException] if the request could not be fulfilled successfully.
        #        This occurs for example if the request is not authenticated correctly
        # @raise [Ingenico::Connect::SDK::NotFoundException] if the requested resource is not found
        # @raise [Ingenico::Connect::SDK::CommunicationException] if there is an error in communicating with the Ingenico ePayments platform.
        #        This occurs for example if a timeout occurs.
        def post(relative_path, request_headers, request_parameters, request_body, response_type, context)
          connection = @session.connection
          request_parameter_list = request_parameters && request_parameters.to_request_parameters
          uri = to_absolute_uri(relative_path, request_parameter_list)
          request_headers = [] if request_headers.nil?

          body = nil
          if request_body.is_a? MultipartFormDataObject
            request_headers.push(RequestHeader.new('Content-Type', request_body.content_type))
            body = request_body
          elsif request_body.is_a? MultipartFormDataRequest
            multipart = request_body.to_multipart_form_data_object
            request_headers.push(RequestHeader.new('Content-Type', multipart.content_type))
            body = multipart
          elsif !request_body.nil?
            request_headers.push(RequestHeader.new('Content-Type', 'application/json'))
            body = @marshaller.marshal(request_body)
          else
            # Set the content-type, even though there is no body, to prevent the httpClient from
            # adding a content-type header after authentication has been generated.
            request_headers.push(RequestHeader.new('Content-Type', 'text/plain'))
          end

          add_generic_headers('POST', uri, request_headers, context)

          response_status_code, response_headers, response_body = nil
          connection.post(uri, request_headers, body) do |status_code, headers, content|
            response_status_code = status_code
            response_headers = headers
            response_body = content.read.force_encoding('UTF-8')
          end
          process_response(response_body, response_status_code, response_headers, response_type, relative_path, context)
        end

        # Performs a POST request to the Ingenico ePayments platform and yields the response as the headers and body.
        #
        # @param relative_path      [String] Path relative to the session's API endpoint
        # @param request_headers    [Array<Ingenico::Connect::SDK::RequestHeader>] Optional array of request headers
        # @param request_parameters [Ingenico::Connect::SDK::ParamRequest] Optional request parameters
        # @param request_body       [Ingenico::Connect::SDK::DataObject, Ingenico::Connect::SDK::MultipartFormDataObject, Ingenico::Connect::SDK::MultipartFormDataRequest]
        #                           The optional request body
        # @param context            [Ingenico::Connect::SDK::CallContext] Optional call context.
        # @yield [Array<Ingenico::Connect::SDK::ResponseHeader>, IO] The response headers and body.
        # @raise [Ingenico::Connect::SDK::ResponseException] if the request could not be fulfilled successfully.
        #        This occurs for example if the request is not authenticated correctly
        # @raise [Ingenico::Connect::SDK::NotFoundException] if the requested resource is not found
        # @raise [Ingenico::Connect::SDK::CommunicationException] if there is an error in communicating with the Ingenico ePayments platform.
        #        This occurs for example if a timeout occurs.
        def post_with_binary_response(relative_path, request_headers, request_parameters, request_body, context)
          connection = @session.connection
          request_parameter_list = request_parameters && request_parameters.to_request_parameters
          uri = to_absolute_uri(relative_path, request_parameter_list)
          request_headers = [] if request_headers.nil?

          body = nil
          if request_body.is_a? MultipartFormDataObject
            request_headers.push(RequestHeader.new('Content-Type', request_body.content_type))
            body = request_body
          elsif request_body.is_a? MultipartFormDataRequest
            multipart = request_body.to_multipart_form_data_object
            request_headers.push(RequestHeader.new('Content-Type', multipart.content_type))
            body = multipart
          elsif !request_body.nil?
            request_headers.push(RequestHeader.new('Content-Type', 'application/json'))
            body = @marshaller.marshal(request_body)
          else
            # Set the content-type, even though there is no body, to prevent the httpClient from
            # adding a content-type header after authentication has been generated.
            request_headers.push(RequestHeader.new('Content-Type', 'text/plain'))
          end
          add_generic_headers('POST', uri, request_headers, context)

          response_status_code, response_headers, response_body = nil
          connection.post(uri, request_headers, body) do |status_code, headers, content|
            response_status_code = status_code
            response_headers = headers
            response_body = process_binary_response(status_code, content, headers, context) do |h, c|
              yield h, c
            end
          end
          throw_exception_if_necessary(response_body, response_status_code, response_headers, relative_path)
        end

        # Performs a PUT request to the Ingenico ePayments platform and returns the response as the given response type.
        #
        # @param relative_path      [String] Path relative to the session's API endpoint
        # @param request_headers    [Array<Ingenico::Connect::SDK::RequestHeader>] Optional array of request headers
        # @param request_parameters [Ingenico::Connect::SDK::ParamRequest] Optional request parameters
        # @param request_body       [Ingenico::Connect::SDK::DataObject, Ingenico::Connect::SDK::MultipartFormDataObject, Ingenico::Connect::SDK::MultipartFormDataRequest]
        #                           The optional request body
        # @param response_type      [Type] The response type.
        # @param context            [Ingenico::Connect::SDK::CallContext] Optional call context.
        # @return The response of the PUT request as the given response type
        # @raise [Ingenico::Connect::SDK::ResponseException] if the request could not be fulfilled successfully.
        #        This occurs for example if the request is not authenticated correctly
        # @raise [Ingenico::Connect::SDK::NotFoundException] if the requested resource is not found
        # @raise [Ingenico::Connect::SDK::CommunicationException] if there is an error in communicating with the Ingenico ePayments platform.
        #        This occurs for example if a timeout occurs.
        def put(relative_path, request_headers, request_parameters, request_body, response_type, context)
          connection = @session.connection
          request_parameter_list = request_parameters && request_parameters.to_request_parameters
          uri = to_absolute_uri(relative_path, request_parameter_list)
          request_headers = [] if request_headers.nil?

          body = nil
          if request_body.is_a? MultipartFormDataObject
            request_headers.push(RequestHeader.new('Content-Type', request_body.content_type))
            body = request_body
          elsif request_body.is_a? MultipartFormDataRequest
            multipart = request_body.to_multipart_form_data_object
            request_headers.push(RequestHeader.new('Content-Type', multipart.content_type))
            body = multipart
          elsif !request_body.nil?
            request_headers.push(RequestHeader.new('Content-Type', 'application/json'))
            body = @marshaller.marshal(request_body)
          else
            # Set the content-type, even though there is no body, to prevent the httpClient from
            # adding a content-type header after authentication has been generated.
            request_headers.push(RequestHeader.new('Content-Type', 'text/plain'))
          end
          add_generic_headers('PUT', uri, request_headers, context)

          response_status_code, response_headers, response_body = nil
          connection.put(uri, request_headers, body) do |status_code, headers, content|
            response_status_code = status_code
            response_headers = headers
            response_body = content.read.force_encoding('UTF-8')
          end
          process_response(response_body, response_status_code, response_headers, response_type, relative_path, context)
        end

        # Performs a PUT request to the Ingenico ePayments platform and yields the response as the headers and body.
        #
        # @param relative_path      [String] Path relative to the session's API endpoint
        # @param request_headers    [Array<Ingenico::Connect::SDK::RequestHeader>] Optional array of request headers
        # @param request_parameters [Ingenico::Connect::SDK::ParamRequest] Optional request parameters
        # @param request_body       [Ingenico::Connect::SDK::DataObject, Ingenico::Connect::SDK::MultipartFormDataObject, Ingenico::Connect::SDK::MultipartFormDataRequest]
        #                           The optional request body
        # @param context            [Ingenico::Connect::SDK::CallContext] Optional call context.
        # @yield [Array<Ingenico::Connect::SDK::ResponseHeader>, IO] The response headers and body.
        # @raise [Ingenico::Connect::SDK::ResponseException] if the request could not be fulfilled successfully.
        #        This occurs for example if the request is not authenticated correctly
        # @raise [Ingenico::Connect::SDK::NotFoundException] if the requested resource is not found
        # @raise [Ingenico::Connect::SDK::CommunicationException] if there is an error in communicating with the Ingenico ePayments platform.
        #        This occurs for example if a timeout occurs.
        def put_with_binary_response(relative_path, request_headers, request_parameters, request_body, context)
          connection = @session.connection
          request_parameter_list = request_parameters && request_parameters.to_request_parameters
          uri = to_absolute_uri(relative_path, request_parameter_list)
          request_headers = [] if request_headers.nil?

          body = nil
          if request_body.is_a? MultipartFormDataObject
            request_headers.push(RequestHeader.new('Content-Type', request_body.content_type))
            body = request_body
          elsif request_body.is_a? MultipartFormDataRequest
            multipart = request_body.to_multipart_form_data_object
            request_headers.push(RequestHeader.new('Content-Type', multipart.content_type))
            body = multipart
          elsif !request_body.nil?
            request_headers.push(RequestHeader.new('Content-Type', 'application/json'))
            body = @marshaller.marshal(request_body)
          else
            # Set the content-type, even though there is no body, to prevent the httpClient from
            # adding a content-type header after authentication has been generated.
            request_headers.push(RequestHeader.new('Content-Type', 'text/plain'))
          end
          add_generic_headers('PUT', uri, request_headers, context)

          response_status_code, response_headers, response_body = nil
          connection.put(uri, request_headers, body) do |status_code, headers, content|
            response_status_code = status_code
            response_headers = headers
            response_body = process_binary_response(status_code, content, headers, context) do |h, c|
              yield h, c
            end
          end
          throw_exception_if_necessary(response_body, response_status_code, response_headers, relative_path)
        end

        # Closes any connections idle for more than _idle_time_ seconds.
        # Will not have any effect if the connection is not a pooled connection (an instance of {Ingenico::Connect::SDK::PooledConnection}).
        def close_idle_connections(idle_time)
          connection = @session.connection
          connection.close_idle_connections(idle_time) if connection.is_a? PooledConnection
        end

        # Closes any connections that have expired.
        # Will not have any effect if the connection is not a pooled connection (an instance of {Ingenico::Connect::SDK::PooledConnection}).
        def close_expired_connections
          connection = @session.connection
          connection.close_expired_connections if connection.is_a? PooledConnection
        end

        # Sets the current body obfuscator to use.
        # @param body_obfuscator [Ingenico::Connect::SDK::Logging::Obfuscation::BodyObfuscator]
        def set_body_obfuscator(body_obfuscator)
          connection = @session.connection
          connection.set_body_obfuscator(body_obfuscator) if connection.is_a? Logging::Obfuscation::ObfuscationCapable
        end

        # Sets the current header obfuscator to use.
        # @param header_obfuscator [Ingenico::Connect::SDK::Logging::Obfuscation::HeaderObfuscator]
        def set_header_obfuscator(header_obfuscator)
          connection = @session.connection
          connection.set_header_obfuscator(header_obfuscator) if connection.is_a? Logging::Obfuscation::ObfuscationCapable
        end

        # Enables logging outgoing requests and incoming responses by registering the _communicator_logger_.
        # Note that only one logger can be registered at a time and calling _enable_logging_
        # a second time will override the old logger instance with the new one.
        #
        # @param communicator_logger [Ingenico::Connect::SDK::Logging::CommunicatorLogger] The communicator logger the requests and responses are logged to
        def enable_logging(communicator_logger)
          @session.connection.enable_logging(communicator_logger)
        end

        # Disables logging by unregistering any previous logger that might be registered.
        def disable_logging
          @session.connection.disable_logging
        end

        # Frees networking resources by closing the underlying network connections.
        # After calling _close_, any use of the _get_, _delete_, _post_ and _put_ methods will not function
        # and likely result in an error.
        def close
          @session.connection.close
        end

        attr_reader :marshaller

        protected

        # Constructs a full URL using the base URL stored in the {Ingenico::Connect::SDK::Session} and the given relative path and request_parameters.
        # The returned URL is a *URI* object.
        #
        # @param relative_path      [String] The relative path of the URL.
        # @param request_parameters [Array<Ingenico::Connect::SDK::RequestParam>] A list of request parameters that each have #name and #value
        #                           which represent the parameter name and value respectively.
        def to_absolute_uri(relative_path, request_parameters)
          api_endpoint = @session.api_endpoint
          raise RuntimeError('api_endpoint should not contain a path') unless api_endpoint.path.nil? || api_endpoint.path.empty?

          unless api_endpoint.userinfo.nil? && api_endpoint.query.nil? &&
            api_endpoint.fragment.nil?
            raise RuntimeError(
                    'api_endpoint should not contain user info, query or fragment'
                  )
          end
          absolute_path = relative_path.start_with?('/') ? relative_path : '/' + relative_path
          uri = URI::HTTP.new(api_endpoint.scheme, nil, api_endpoint.host,
                              api_endpoint.port, nil, absolute_path, nil, nil, nil)
          unless request_parameters.nil?
            request_parameters.each do |nvp|
              parameters = URI.decode_www_form(uri.query || '') << [nvp.name, nvp.value]
              uri.query = URI.encode_www_form(parameters)
            end
          end
          uri
        end

        # Adds several standard headers to the http headers.
        # This method will add the 'Date' and 'Authorization' header;
        # the 'X-GCS-Idempotence-Key' header will also be added if an idempotence context is given
        #
        # @param http_method     [String] 'GET', 'DELETE', 'POST' or 'PUT' depending on the HTTP method being used
        # @param uri             [URI::HTTP] The full URI to the Ingenico ePayments platform,
        #                        including the relative path and request parameters.
        # @param request_headers [Array<Ingenico::Connect::SDK::RequestHeader>] List of request headers in which which new headers will be added
        # @param context         [Ingenico::Connect::SDK::CallContext] object that will be used to produce
        #   an Idempotence header to prevent accidental request duplication.
        def add_generic_headers(http_method, uri, request_headers, context = nil)
          request_headers.concat(@session.meta_data_provider.meta_data_headers)
          request_headers.push(RequestHeader.new('Date', get_header_date_string))
          if !context.nil? && !context.idempotence_key.nil?
            request_headers.push(RequestHeader.new('X-GCS-Idempotence-Key', context.idempotence_key))
          end
          authenticator = @session.authenticator
          authentication_signature = authenticator.create_simple_authentication_signature(http_method, uri, request_headers)
          request_headers.push(RequestHeader.new('Authorization', authentication_signature))
        end

        def get_header_date_string
          Time.now.utc.strftime('%a, %d %b %Y %H:%M:%S GMT')
        end

        def process_response(body, status, headers, response_type, request_path, context)
          update_context(headers, context) unless context.nil?

          throw_exception_if_necessary(body, status, headers, request_path)
          @marshaller.unmarshal(body, response_type)
        end

        def process_binary_response(status, body, headers, context)
          update_context(response.headers, context) unless context.nil?

          if status < 400
            yield headers, body
            ''
          else
            body.read.force_encoding('UTF-8')
          end
        end

        def update_context(headers, context)
          idempotence_request_timestamp_value = ResponseHeader.get_header_value(headers, 'X-GCS-Idempotence-Request-Timestamp')
          if idempotence_request_timestamp_value.nil?
            context.idempotence_request_timestamp = nil
          else
            context.idempotence_request_timestamp = idempotence_request_timestamp_value
          end
        end

        def throw_exception_if_necessary(body, status_code, headers, request_path)
          if status_code < 200 || status_code >= 300
            if !body.nil? && !is_json(headers)
              cause = ResponseException.new(status_code, headers, body)
              if status_code == 404
                raise NotFoundException.new(cause, 'The requested resource was not found; invalid path: ' +
                  request_path)
              else
                raise CommunicationException, cause
              end
            else
              raise ResponseException.new(status_code, headers, body)
            end
          end
        end

        private

        def is_json(headers)
          content_type = ResponseHeader.get_header_value(headers, 'Content-Type')
          content_type.nil? || 'application/json'.casecmp(content_type) == 0 ||
            content_type.downcase.start_with?('application/json')
        end
      end
    end
  end
end
