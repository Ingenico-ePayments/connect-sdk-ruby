module Ingenico
  module Connect
    module SDK
      # Represents HTTP response headers
      # Each header is immutable has a #name and #value attribute
      #
      # @attr_reader [String] name  HTTP header name
      # @attr_reader [String] value HTTP header value
      class ResponseHeader

        # Create a new header using the name and value given as parameters.
        def initialize(name, value)
          raise ArgumentError.new('name is required') if name.nil? or name.strip.empty?
          @name = name
          @value = value
        end

        attr_reader :name
        attr_reader :value

        def to_s
          "#{name}:#{value}"
        end

        # Return the {Ingenico::Connect::SDK::ResponseHeader} that goes by the given _header_name_,
        # If this Response does not contain a header with the given name, return _nil_ instead
        def self.get_header(headers, header_name)
          selected_headers = headers.select { |h| h.name.casecmp(header_name) == 0 }
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
          return (
            if header.nil?
              nil
            else
              header.value
            end)
        end

        # Returns the value of the _filename_ parameter of the _Content-Disposition_ header from
        # parameter _headers_
        # If this Response does not contain a header with the given name, return _nil_ instead
        def self.get_disposition_filename(headers)
          header_value = get_header_value(headers, "Content-Disposition")
          unless header_value.nil?
            if header_value =~ /(?:^|;)\s*filename\s*=\s*(.*?)\s*(?:;|$)i/
              return trim_quotes($2)
            end
          end

          return nil
        end

        private

        # Trims the single or double quotes at the beginning and end of parameter _filename_ if they exist
        # If they don't exist, it returns the original _filename_ instead
        def trim_quotes(filename)
          unless filename.length < 2
            if (filename.chars.first == '\'' && filename.chars.last == '\"') ||
              (filename.chars.first == '"' && filename.chars.last == '"')
              return filename[1...-1]
            end
          end
          filename
        end
      end
    end
  end
end
