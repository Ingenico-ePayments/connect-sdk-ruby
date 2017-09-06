module Ingenico::Connect::SDK

  # Exception used internally in the SDK to indicate an error response was received from the Ingenico ePayments platform.
  class ResponseException < RuntimeError

    def initialize(response)
      super('the Ingenico ePayments platform returned an error response')
      @response = response
    end

    # {Ingenico::Connect::SDK::Response} object that was returned by the Ingenico ePayments platform
    attr_reader :response

    # HTTP status code that was returned by the Ingenico ePayments platform
    def status_code
      @response.status_code
    end

    # string HTTP message body that was returned by the Ingenico ePayments platform
    def body
      @response.body
    end

    # List of {Ingenico::Connect::SDK::ResponseHeader} that represent the HTTP headers used in the response from the Ingenico ePayments platform
    def headers
      @response.headers
    end

    # Returns the {Ingenico::Connect::SDK::ResponseHeader} that corresponds to the given _header_name_
    # used in the HTTP response from the Ingenico ePayments platform, or *nil* if the header was not present in the response.
    def get_header(header_name)
      @response.get_header(header_name)
    end

    # Returns the header value received that corresponds to the header named by _header_name_,
    # or *nil* if _header_name_ was not a header present in the HTTP response.
    def get_header_value(header_name)
      @response.get_header_value(header_name)
    end

    def to_s
      str = super.to_s
      status_code = @response.status_code
      if status_code > 0
        str += '; status_code=' + status_code.to_s
      end
      response_body = @response.body
      if !response_body.nil? && response_body.length > 0
        str += "; response_body='" + response_body + "'"
      end
      str.to_s
    end
  end
end
