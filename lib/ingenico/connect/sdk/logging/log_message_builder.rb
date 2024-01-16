require 'ingenico/connect/sdk/logging/obfuscation/body_obfuscator'
require 'ingenico/connect/sdk/logging/obfuscation/header_obfuscator'

module Ingenico
  module Connect
    module SDK
      module Logging
        # Abstract class used to construct a message describing a request or response.
        #
        # @attr_reader [String] request_id   An identifier assigned to the request and response
        # @attr_reader [String] headers      Request or response headers in string form
        # @attr_reader [String] body         Request or response body as a string
        # @attr_reader [String] content_type Content type of the body, generally 'application/json' or 'text/html'
        class LogMessageBuilder

          attr_reader :request_id
          attr_reader :headers
          attr_reader :body
          attr_reader :content_type
          attr_reader :body_obfuscator
          attr_reader :header_obfuscator

          # Create a new LogMessageBuilder
          def initialize(request_id,
                         body_obfuscator = Obfuscation::BodyObfuscator.default_obfuscator,
                         header_obfuscator = Obfuscation::HeaderObfuscator.default_obfuscator)
            raise ArgumentError if request_id.nil? or request_id.empty?
            raise ArgumentError if body_obfuscator.nil?
            raise ArgumentError if header_obfuscator.nil?
            @request_id = request_id
            @headers = ''
            @body_obfuscator = body_obfuscator
            @header_obfuscator = header_obfuscator
          end

          # Adds a single header to the #headers string
          def add_headers(name, value)
            @headers += ', ' if @headers.length > 0
            @headers += name + '="'
            @headers += @header_obfuscator.obfuscate_header(name, value) unless value.nil?
            @headers += '"'
          end

          # Sets the body of this message to the parameter body.

          # @param body         [String] the message body
          # @param content_type [String] the content type of the body
          def set_body(body, content_type)
            if is_binary(content_type)
              @body = "<binary content>"
            else
              @body = @body_obfuscator.obfuscate_body(body)
            end
            @content_type = content_type
          end

          # Constructs and returns the log message as a string.
          def get_message
            raise NotImplementedError.new("#{self.class.name}#get_message() is not implemented.")
          end

          def to_s
            if self.class == LogMessageBuilder
              super.to_s
            else
              get_message
            end
          end

          # Returns an empty string if the parameter is nil, and returns the parameter itself otherwise
          protected def empty_if_null(value)
            value.nil? ? '' : value
          end

          # Returns whether or not the content type is binary
          def is_binary(content_type)
            if content_type.nil?
              false
            else
              content_type = content_type.downcase
              !(content_type.start_with?("text/") || content_type.include?("json") || content_type.include?("xml"))
            end
          end
        end
      end
    end
  end
end
