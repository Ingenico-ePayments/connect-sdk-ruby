module Ingenico::Connect::SDK

  # Base class for HTTP responses. It provides access to the response headers, status code and response message body
  class Response

    # Create a new response object that stores the following:
    # status_code:: HTTP status code
    # body::        response message body, given as a string
    # headers::     response headers as a {Ingenico::Connect::SDK::ResponseHeader} list
    def initialize(status_code, body, headers)
      @status_code = status_code
      @body = body
      if headers.nil?
        @headers = [].freeze
      else
        @headers = headers.dup.freeze
      end
    end

    # HTTP status code
    attr_reader :status_code
    # Response message body
    attr_reader :body
    # Response headers as a {Ingenico::Connect::SDK::ResponseHeader} list
    attr_reader :headers

    # Returns the {Ingenico::Connect::SDK::ResponseHeader} that goes by the given _header_name_,
    # or _nil_ if this Response does not contain a header with the given name.
    def get_header(header_name)
      @headers.each { |header|
        if header.name.casecmp(header_name) == 0
          return header
        end
      }
      return nil
    end

    # Returns the header value of the header that goes by the given _header_name_,
    # or _nil_ if this Response does not contain a header with the given name.
    def get_header_value(header_name)
      header = get_header(header_name)
      if !header.nil?
        header.value
      else
        nil
      end
    end

    def to_s
      str =  self.class.name
      str += '[status_code=' + @status_code.to_s
      if !@body.nil? && @body.length > 0
        str += ",body='" + @body + "'"
      end
      unless @headers.empty? || @headers.nil?
        str += ',headers=' + @headers.to_s
      end
      str += ']'
      str.to_s
    end
  end
end
