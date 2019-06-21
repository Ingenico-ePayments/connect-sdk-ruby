module Ingenico::Connect::SDK
  module Logging

    class ResponseLogMessageBuilder < LogMessageBuilder

      # Class that converts data about a response into a properly formatted log message.
      # Formats request id, status code, headers, body and time between request and response into a helpful message.
      #
      # @param request_id  [String] identifier of the request corresponding to this response.
      # @param status_code [Integer] HTTP status code of the response.
      # @param duration    [Float] time elapsed between request and response.
      def initialize(request_id, status_code, duration=-1)
        super(request_id)
        @status_code = status_code
        @duration = duration
      end

      # Constructs and returns a log message based on the request data. The log message is a string.
      def get_message
        msg_template = "Incoming response (requestId='%s'" +
            ((@duration < 0) ? "" : ", %.3f ms") +
            "):\n" +
            "  status-code:  '%s'\n" +
            "  headers:      '%s'\n" +
            "  content-type: '%s'\n" +
            "  body:         '%s'"

        return sprintf(msg_template, @request_id, @status_code, @headers,
                       empty_if_null(@content_type), empty_if_null(@body)) if @duration < 0
        sprintf(msg_template, @request_id, @duration, @status_code, @headers,
                empty_if_null(@content_type), empty_if_null(@body))
      end
    end
  end
end
