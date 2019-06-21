module Ingenico::Connect::SDK

  # Represents HTTP request headers
  # Each header is immutable has a #name and #value attribute
  #
  # @attr_reader [String] name  HTTP header name
  # @attr_reader [String] value HTTP header value
  class RequestHeader

    # Create a new header using the name and value given as parameters.
    def initialize(name, value)
      if name.nil? || name.strip.empty?
        raise ArgumentError.new('name is required')
      end
      @name = name
      @value = normalize_value(value)
    end

    attr_reader :name
    attr_reader :value

    def to_s
      "#{name}:#{value}"
    end

    # Return the {Ingenico::Connect::SDK::ResponseHeader} that goes by the given _header_name_,
    # If this Response does not contain a header with the given name, return _nil_ instead
    def self.get_header(headers, header_name)
        selected_headers = headers.select { |h| h.name == header_name }
        if selected_headers.nil? || selected_headers.length == 0
          return nil
        else
          return selected_headers[0]
        end
    end

    # Returns the header value of the header that goes by the given _header_name_,
    # If this response does not contain a header with the given name, return _nil_ instead
    def self.get_header_value(headers, header_name)
        header = get_header(headers, header_name)
        return (if header.nil? then nil else header.value end)
    end

    private

    def normalize_value(value)
      if value.nil? || value.empty?
        return value
      end
      # Replace all sequences of whitespace*-linebreak-whitespace* into a single linebreak-space
      # This will ensure that:
      # - no line ends with whitespace, because this causes authentication failures
      # - each line starts with a single whitespace, so it is a valid header value
      value.gsub(/[\s&&[^\r\n]]*(\r?\n)[\s&&[^\r\n]]*/, '\1 ')
    end
  end
end
