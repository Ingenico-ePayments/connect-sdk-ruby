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
      @headers = if headers.nil? or headers.empty?
                   {}
                  else
                    headers.inject({}) do |hash, header|
                      hash[header.name.downcase.to_sym] = header.dup.freeze
                      hash
                    end
                  end.freeze
    end

    # HTTP status code
    attr_reader :status_code

    # Response message body
    attr_reader :body

    # Response headers as a {Ingenico::Connect::SDK::ResponseHeader} list
    def headers
      @headers.values
    end

    # Returns the {Ingenico::Connect::SDK::ResponseHeader} that goes by the given _header_name_,
    # or _nil_ if this Response does not contain a header with the given name.
    def get_header(header_name)
      @headers[header_name.downcase.to_sym]
    end

    # Returns the header value of the header that goes by the given _header_name_,
    # or _nil_ if this Response does not contain a header with the given name.
    def get_header_value(header_name)
      header = get_header(header_name)
      unless header.nil?
        header.value
      else
        nil
      end
    end

    def to_s
      str = self.class.name
      str << "[status_code=#{@status_code}"
      str << ",body='#{@body}'" unless @body.nil? or @body.empty?
      str << ",headers=#{headers}" unless headers.nil? or headers.empty?
      str << ']'
    end
  end
end
