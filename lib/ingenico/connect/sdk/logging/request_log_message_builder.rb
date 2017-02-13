module Ingenico::Connect::SDK
  module Logging

    # Class that converts data about a request into a properly formatted log message.
    # Formats request id, http method, uri, headers and body into a helpful message.
    class RequestLogMessageBuilder < Ingenico::Connect::SDK::Logging::LogMessageBuilder
      def initialize(request_id, method, uri)
        super(request_id)
        @method = method
        @uri = uri
      end

      # Constructs and returns a log message based on the request data. The log message is a string.
      def get_message
        msgTemplateWithoutBody = "Outgoing request (requestId='%s'):\n" +
            "  method:       '%s'\n" +
            "  uri:          '%s'\n" +
            "  headers:      '%s'"
        msgTemplateWithBody = msgTemplateWithoutBody + "\n" +
            "  content-type: '%s'\n" +
            "  body:         '%s'"

        return sprintf(msgTemplateWithoutBody, @request_id, empty_if_null(@method),
                       format_uri, @headers) if @body.nil?
        sprintf(msgTemplateWithBody, @request_id, empty_if_null(@method),
                format_uri, @headers, empty_if_null(@content_type), @body)
      end

      private

      def format_uri
        '' unless @uri && @uri.path
        if @uri.query.nil?
          return @uri.path
        else
          return "#{@uri.path}?#{@uri.query}" unless @uri.query.nil?
        end
        # @uri.path + '?' + empty_if_null(@uri.query)
      end

    end
  end
end
