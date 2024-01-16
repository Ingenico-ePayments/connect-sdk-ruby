require 'ingenico/connect/sdk/logging/obfuscation/body_obfuscator'
require 'ingenico/connect/sdk/logging/obfuscation/header_obfuscator'
require 'ingenico/connect/sdk/logging/log_message_builder'

module Ingenico
  module Connect
    module SDK
      module Logging
        # Class that converts data about a response into a properly formatted log message.
        # Formats request id, status code, headers, body and time between request and response into a helpful message.
        class ResponseLogMessageBuilder < LogMessageBuilder

          # @param request_id  [String] identifier of the request corresponding to this response.
          # @param status_code [Integer] HTTP status code of the response.
          # @param duration    [Float] time elapsed between request and response.
          def initialize(request_id, status_code, duration = -1,
                         body_obfuscator = Obfuscation::BodyObfuscator.default_obfuscator,
                         header_obfuscator = Obfuscation::HeaderObfuscator.default_obfuscator)
            super(request_id, body_obfuscator, header_obfuscator)
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
  end
end
