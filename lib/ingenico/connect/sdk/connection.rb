module Ingenico::Connect::SDK

  # Class used to communicate using the HTTP (or HTTPS) protocol.
  # Performs GET, DELETE, POST and PUT requests given a target uri and request headers.
  # @see Ingenico::Connect::SDK::DefaultImpl::DefaultConnection
  class Connection
    include Ingenico::Connect::SDK::Logging::LoggingCapable

    # Performs a GET request to _uri_ using _request_headers_ and returns the response as a {Ingenico::Connect::SDK::Response} object
    def get(uri, request_headers)
      raise NotImplementedError
    end

    # Performs a DELETE request to _uri_ using _request_headers_ and returns the response as a {Ingenico::Connect::SDK::Response} object
    def delete(uri, request_headers)
      raise NotImplementedError
    end

    # Performs a POST request to _uri_ using _request_headers_ and _body_.
    # Returns the response as a {Ingenico::Connect::SDK::Response} object
    def post(uri, request_headers, body)
      raise NotImplementedError
    end

    # Performs a PUT request to _uri_ using _request_headers_ and _body_.
    # Returns the response as a {Ingenico::Connect::SDK::Response} object
    def put(uri, request_headers, body)
      raise NotImplementedError
    end
  end
end
