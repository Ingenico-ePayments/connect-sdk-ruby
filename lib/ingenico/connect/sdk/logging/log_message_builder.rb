module Ingenico::Connect::SDK
  module Logging

    # Abstract class used to construct a message describing a request or response.
    class LogMessageBuilder

      # An identifier assigned to the request and response
      attr_reader :request_id

      # Request or response headers in string form
      attr_reader :headers

      # Request or response body as a string
      attr_reader :body

      # Content type of the body, generally 'application/json' or 'text/html'
      attr_reader :content_type

      # Create a new LogMessageBuilder
      def initialize(requestId)
        raise ArgumentError if requestId.nil? or requestId.empty?
        @request_id = requestId
        @headers = ''
      end

      # Adds a single header to the #headers string
      def add_headers(name, value)
        @headers += ', ' if @headers.length > 0
        @headers += name + '="'
        @headers += LoggingUtil.obfuscate_header(name, value) unless value.nil?
        @headers += '"'
      end

      # Sets the body of this message to the parameter body.
      # body::          The message body
      # content_type::  The content type of the body
      def set_body(body, content_type)
        @body = LoggingUtil.obfuscate_body(body)
        @content_type = content_type
      end

      # Constructs and returns the log message as a string.
      def get_message
        raise NotImplementedError("#{self.class.name}#get_message() is not implemented.")
      end

      def to_s
        if self.class == LogMessageBuilder
          return super.to_s
        else
          return get_message
        end
      end

      # Returns an empty string if the parameter is nil, and returns the parameter itself otherwise
      protected def empty_if_null(value)
        value.nil? ? '' : value
      end
    end
  end
end
