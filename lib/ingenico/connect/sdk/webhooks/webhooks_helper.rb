require 'ingenico/connect/sdk/client'
require 'ingenico/connect/sdk/webhooks/api_version_mismatch_exception'
require 'ingenico/connect/sdk/webhooks/signature_validator'
require 'ingenico/connect/sdk/webhooks/webhooks_event'

module Ingenico
  module Connect
    module SDK
      module Webhooks

        # Ingenico ePayments platform webhooks Helper, Thread-safe.
        class WebhooksHelper
          def initialize(marshaller, secret_key_store)
            raise ArgumentError if marshaller.nil?
            @marshaller = marshaller
            @signature_validator = SignatureValidator.new(secret_key_store)
          end

          # Unmarshals the given body, while also validating it using the given request headers.
          #
          # @param body            [String] body of the request
          # @param request_headers [Array<Ingenico::Connect::SDK::RequestHeader>] headers of the request
          def unmarshal(body, request_headers)
            validate(body, request_headers)
            event = @marshaller.unmarshal(body, WebhooksEvent)
            validate_api_version(event)
            event
          end

          # Validates incoming request using request headers
          #
          # @param body            [String] body of the request
          # @param request_headers [Array<Ingenico::Connect::SDK::RequestHeader>] headers of the request
          def validate(body, request_headers)
            @signature_validator.validate(body, request_headers)
          end

          private

          # Returns true if the client API version and the webhooks event API version matches
          def validate_api_version(event)
            raise ApiVersionMismatchException.new(event.api_version, Client.API_VERSION) unless Client.API_VERSION.eql?(event.api_version)
          end
        end
      end
    end
  end
end
