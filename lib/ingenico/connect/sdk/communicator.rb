require 'uri'

module Ingenico::Connect::SDK

  # Class responsible for facilitating communication with the Ingenico ePayments platform.
  # It combines the following classes to provide communication functionality:
  #
  # session::     {Ingenico::Connect::SDK::Session} that stores data for network communication and facilitates network communication
  # marshaller::  {Ingenico::Connect::SDK::Marshaller} that is used to marshal and unmarshal data to and from JSON format
  #
  class Communicator
    include Logging::LoggingCapable

    # Creates a new Communicator based on a session and marshaller.
    #
    # session::     {Ingenico::Connect::SDK::Session} that stores data for network communication and facilitates network communication
    # marshaller::  {Ingenico::Connect::SDK::Marshaller} that is used to marshal and unmarshal data to and from JSON format
    #
    def initialize(session, marshaller)
      if session.nil?
        raise ArgumentError('session is required')
      end
      if marshaller.nil?
        raise ArgumentError('marshaller is required')
      end
      @session = session
      @marshaller = marshaller
    end

    # Performs a GET request to the Ingenico ePayments platform and returns the response as a {Ingenico::Connect::SDK::Response} object.
    #
    # Throws:
    # ResponseException::       Thrown if the request could not be fulfilled successfully.
    #                           This occurs for example if the request is not authenticated correctly
    # NotFoundException::       Thrown if the requested resource is not found
    # CommunicationException::  Thrown if there is an error in communicating with the Ingenico ePayments platform.
    #                           This occurs for example if a timeout occurs.
    def get(relative_path, request_headers, request_parameters, response_type, context)
      connection = @session.connection
      if request_parameters.nil?
        request_parameter_list = nil
      else
        request_parameter_list = request_parameters.to_request_parameters
      end
      uri = to_absolute_uri(relative_path, request_parameter_list)
      if request_headers.nil?
        request_headers = []
      end
      add_generic_headers('GET', uri, request_headers, context)
      response = connection.get(uri, request_headers)
      process_response(response, response_type, relative_path, context)
    end

    # Performs a DELETE request to the Ingenico ePayments platform and returns the response as a {Ingenico::Connect::SDK::Response} object.
    #
    # Throws:
    # ResponseException::       Thrown if the request could not be fulfilled successfully.
    #                           This occurs for example if the request is not authenticated correctly.
    # NotFoundException::       Thrown if the referred resource is not found.
    # CommunicationException::  Thrown if there is an error in communicating with the Ingenico ePayments platform.
    #                           This occurs for example if a timeout occurs.
    def delete(relative_path, request_headers, request_parameters, response_type, context)
      connection = @session.connection
      if request_parameters.nil?
        request_parameter_list = nil
      else
        request_parameter_list = request_parameters.to_request_parameters
      end
      uri = to_absolute_uri(relative_path, request_parameter_list)
      if request_headers.nil?
        request_headers = []
      end
      add_generic_headers('DELETE', uri, request_headers, context)
      response = connection.delete(uri, request_headers)
      process_response(response, response_type, relative_path, context)
    end

    # Performs a POST request to the Ingenico ePayments platform and returns the response as a {Ingenico::Connect::SDK::Response} object.
    #
    # Throws:
    # ResponseException::       Thrown if the request could not be fulfilled successfully.
    #                           This occurs for example if the request is not authenticated correctly.
    # NotFoundException::       Thrown if the referred resource is not found.
    # CommunicationException::  Thrown if there is an error in communicating with the Ingenico ePayments platform.
    #                           This occurs for example if a timeout occurs.
    def post(relative_path, request_headers, request_parameters, request_body,
             response_type, context)
      connection = @session.connection
      if request_parameters.nil?
        request_parameter_list = nil
      else
        request_parameter_list = request_parameters.to_request_parameters
      end
      uri = to_absolute_uri(relative_path, request_parameter_list)
      if request_headers.nil?
        request_headers = []
      end
      request_json = nil
      unless request_body.nil?
        request_headers.push(RequestHeader.new('Content-Type', 'application/json'))
        request_json = @marshaller.marshal(request_body)
      end
      add_generic_headers('POST', uri, request_headers, context)
      response = connection.post(uri, request_headers, request_json)
      process_response(response, response_type, relative_path, context)
    end

    # Performs a PUT request to the Ingenico ePayments platform and returns the response as a {Ingenico::Connect::SDK::Response} object.
    #
    # Throws:
    # ResponseException::       Thrown if the request could not be fulfilled successfully.
    #                           This occurs for example if the request is not authenticated correctly.
    # NotFoundException::       Thrown if the referred resource is not found.
    # CommunicationException::  Thrown if there is an error in communicating with the Ingenico ePayments platform.
    #                           This occurs for example if a timeout occurs.
    def put(relative_path, request_headers, request_parameters, request_body,
            response_type, context)
      connection = @session.connection
      if request_parameters.nil?
        request_parameter_list = nil
      else
        request_parameter_list = request_parameters.to_request_parameters
      end
      uri = to_absolute_uri(relative_path, request_parameter_list)
      if request_headers.nil?
        request_headers = []
      end
      request_json = nil
      unless request_body.nil?
        request_headers.push(RequestHeader.new('Content-Type', 'application/json'))
        request_json = @marshaller.marshal(request_body)
      end
      add_generic_headers('PUT', uri, request_headers, context)
      response = connection.put(uri, request_headers, request_json)
      process_response(response, response_type, relative_path, context)
    end

    # Closes any connections idle for more than _idle_time_ seconds.
    # Will not have any effect if the connection is not a pooled connection (an instance of {Ingenico::Connect::SDK::PooledConnection}).
    def close_idle_connections(idle_time)
      connection = @session.connection
      if connection.is_a? PooledConnection
        connection.close_idle_connections(idle_time)
      end
    end

    # Closes any connections that have expired.
    # Will not have any effect if the connection is not a pooled connection (an instance of {Ingenico::Connect::SDK::PooledConnection}).
    def close_expired_connections
      connection = @session.connection
      if connection.is_a? PooledConnection
        connection.close_expired_connections
      end
    end

    # Enables logging outgoing requests and incoming responses by registering the _communicator_logger_.
    # Note that only one logger can be registered at a time and calling _enable_logging_
    # a second time will override the old logger instance with the new one.
    #
    # communicator_logger:: The {Ingenico::Connect::SDK::Logging::CommunicatorLogger} the requests and responses are logged to
    #
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

    # A {Ingenico::Connect::SDK::Marshaller} instance used by the communicator for serializing/deserializing to/from JSON
    attr_reader :marshaller

    protected

    # Constructs a full url using the base url stored in the {Ingenico::Connect::SDK::Session} and the given relative path and request_parameters.
    # The returned url is a *URI* object.
    #
    # relative_path::       The relative path of the url in string form.
    # request_parameters::  A list of request parameters that each have #name and #value
    #                       which represent the parameter name and value respectively.
    def to_absolute_uri(relative_path, request_parameters)
      api_endpoint = @session.api_endpoint
      unless api_endpoint.path.nil? || api_endpoint.path.empty?
        raise RuntimeError('api_endpoint should not contain a path')
      end
      unless api_endpoint.userinfo.nil? && api_endpoint.query.nil? && api_endpoint.fragment.nil?
        raise RuntimeError('api_endpoint should not contain user info, query or fragment')
      end
      absolute_path = relative_path.start_with?('/')? relative_path : '/'+relative_path
      uri = URI::HTTP.new(api_endpoint.scheme, nil, api_endpoint.host,
                          api_endpoint.port, nil, absolute_path, nil, nil, nil)
      unless request_parameters.nil?
        for nvp in request_parameters
          parameters = URI.decode_www_form(uri.query || '') << [nvp.name, nvp.value]
          uri.query = URI.encode_www_form(parameters)
        end
      end
      uri
    end

    # Adds several standard headers to the http headers.
    #
    # http_method::     'GET', 'DELETE', 'POST' or 'PUT' depending on the HTTP method being used
    # uri::             The full URI as a URI object to the Ingenico ePayments platform,
    #                   including the relative path and request parameters.
    # request_headers:: List of {Ingenico::Connect::SDK::RequestHeader} in which which new headers will be added
    # context::         {Ingenico::Connect::SDK::CallContext} object that will be used to produce
    #                   an Idempotence header to prevent accidental request duplication.
    #
    # This method will add the 'Date' and 'Authorization' header;
    # the 'X-GCS-Idempotence-Key' header will also be added if an idempotence context is given
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

    def process_response(response, response_type, request_path, context)
      update_context(response, context) unless context.nil?

      throw_exception_if_necessary(response, request_path)
      @marshaller.unmarshal(response.body, response_type)
    end

    def update_context(response, context)
      idempotence_request_timestamp_value = response.get_header_value('X-GCS-Idempotence-Request-Timestamp')
      if idempotence_request_timestamp_value.nil?
        context.idempotence_request_timestamp = nil
      else
        context.idempotence_request_timestamp = idempotence_request_timestamp_value
      end
    end

    def throw_exception_if_necessary(response, request_path)
      status_code = response.status_code
      if status_code < 200 || status_code >= 300
        body = response.body
        if !body.nil? && !is_json(response)
          cause = ResponseException.new(response)
          if status_code == 404
            raise NotFoundException.new(cause, 'The requested resource was not found; invalid path: ' +
                request_path)
          else
            raise CommunicationException.new(cause)
          end
        else
          raise ResponseException.new(response)
        end
      end
    end

    private

    def is_json(response)
      content_type = response.get_header_value('Content-Type')
      content_type.nil? || 'application/json'.casecmp(content_type) == 0 ||
          content_type.downcase.start_with?('application/json')
    end
  end
end
