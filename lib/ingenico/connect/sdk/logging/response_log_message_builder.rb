module Ingenico::Connect::SDK
  module Logging

    class ResponseLogMessageBuilder < LogMessageBuilder

      # Class that converts data about a response into a properly formatted log message.
      # Formats request id, status code, headers, body and time between request and response into a helpful message.
      # request_id::  Identifier of the request corresponding to this response.
      # status_code:: HTTP status code of the response.
      # duration::    Time elapsed between request and response.
      def initialize(request_id, status_code, duration=-1)
        super(request_id)
        @status_code = status_code
        @duration = duration
      end

      # Constructs and returns a log message based on the request data. The log message is a string.
      def get_message
        msgTemplate = "Incoming response (requestId='%s'" +
            ((@duration < 0) ? "" : ", %.3f ms") +
            "):\n" +
            "  status-code:  '%s'\n" +
            "  headers:      '%s'\n" +
            "  content-type: '%s'\n" +
            "  body:         '%s'"

        return sprintf(msgTemplate, @request_id, @status_code, @headers,
                       empty_if_null(@content_type), empty_if_null(@body)) if @duration < 0
        sprintf(msgTemplate, @request_id, @duration, @status_code, @headers,
                empty_if_null(@content_type), empty_if_null(@body))
      end
    end
  end
end
