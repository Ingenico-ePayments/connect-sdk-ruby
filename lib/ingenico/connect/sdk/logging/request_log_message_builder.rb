require 'ingenico/connect/sdk/logging/obfuscation/body_obfuscator'
require 'ingenico/connect/sdk/logging/obfuscation/header_obfuscator'
require 'ingenico/connect/sdk/logging/log_message_builder'

module Ingenico
  module Connect
    module SDK
      module Logging
        # Class that converts data about a request into a properly formatted log message.
        # Formats request id, http method, uri, headers and body into a helpful message.
        class RequestLogMessageBuilder < Ingenico::Connect::SDK::Logging::LogMessageBuilder

          def initialize(request_id, method, uri,
                         body_obfuscator = Obfuscation::BodyObfuscator.default_obfuscator,
                         header_obfuscator = Obfuscation::HeaderObfuscator.default_obfuscator)
            super(request_id, body_obfuscator, header_obfuscator)
            @method = method
            @uri = uri
          end

          # Constructs and returns a log message based on the request data. The log message is a string.
          def get_message
            msg_template_without_body = "Outgoing request (requestId='%s'):\n" +
              "  method:       '%s'\n" +
              "  uri:          '%s'\n" +
              "  headers:      '%s'"
            msg_template_with_body = msg_template_without_body + "\n" +
              "  content-type: '%s'\n" +
              "  body:         '%s'"

            return sprintf(msg_template_without_body, @request_id, empty_if_null(@method),
                           format_uri, @headers) if @body.nil?
            sprintf(msg_template_with_body, @request_id, empty_if_null(@method),
                    format_uri, @headers, empty_if_null(@content_type), @body)
          end

          private

          def format_uri
            '' unless @uri && @uri.path
            if @uri.query.nil?
              @uri.path
            else
              "#{@uri.path}?#{@uri.query}" unless @uri.query.nil?
            end
            # @uri.path + '?' + empty_if_null(@uri.query)
          end
        end
      end
    end
  end
end
