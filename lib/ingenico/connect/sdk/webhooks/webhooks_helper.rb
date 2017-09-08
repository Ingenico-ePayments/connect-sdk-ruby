require 'openssl'
require 'base64'

module Ingenico::Connect::SDK
  module Webhooks

    # Ingenico ePayments platform webhooks Helper, Thread-safe.
    class WebhooksHelper
      def initialize(marshaller, secret_key_store)
        raise ArgumentError if marshaller.nil?
        raise ArgumentError if secret_key_store.nil?
        @marshaller = marshaller
        @secret_key_store = secret_key_store
      end

      # Unmarshals the given body, while also validating it using the given
      # request headers.
      # body:: body of the request, a String
      # request_headers:: headers of the request, as an Array of {Ingenico::Connect::SDK::RequestHeader}
      def unmarshal(body, request_headers)
        validate(body, request_headers)
        event = @marshaller.unmarshal(body, WebhooksEvent)
        validate_api_version(event)
        event
      end

      # Validates incoming request using request headers
      #
      # body:: body of the request, a String
      # request_headers:: headers of the request which is an Array of {Ingenico::Connect::SDK::RequestHeader}
      def validate(body, request_headers)
        validate_body(body, request_headers)
      end

      private

      HEADER_SIGNATURE = 'X-GCS-Signature'.freeze
      HEADER_KEY_ID = 'X-GCS-KeyId'.freeze
      HMAC_SCHEME = 'SHA256'.freeze

      # validation utility methods

      # Validates the body using given request headers
      #
      # body:: a String converted from byte array
      # request_headers:: headers of the request, as an Array of SDK::RequestHeader
      def validate_body(body, request_headers)
        signature = get_header_value(request_headers, HEADER_SIGNATURE)
        key_id = get_header_value(request_headers, HEADER_KEY_ID)
        secret_key = @secret_key_store.get_secret_key(key_id)
        digest = OpenSSL::Digest.new(HMAC_SCHEME)
        hmac = OpenSSL::HMAC.digest(digest, secret_key, body)
        expected_signature = Base64.strict_encode64(hmac).strip

        unless equal_signatures?(signature, expected_signature)
          msg = "failed to validate signature '#{signature}'"
          raise SignatureValidationException.new(message: msg)
        end
      end

      # Checks two signatures
      # signature:: a String
      # expected_signature:: a String
      def equal_signatures?(signature, expected_signature)
        # NOTE: copy the signatures to avoid runtime tampering via references
        signature = signature.dup.freeze
        expected_signature = expected_signature.dup.freeze
        # NOTE: do not use simple equality comparision to avoid side channel attack
        limit = [signature.length, expected_signature.length, 256].max
        limit.times.inject(true) do |flag, idx|
          # NOTE: this block is constructed to take constant time to run
          flag &= signature[idx] == expected_signature[idx]
          # [] returns nil if idx >= the length of the String
        end
      end

      # general utility methods

      # Returns true if the client API version and the webhooks event API version matches
      def validate_api_version(event)
        raise ApiVersionMismatchException.new(event.api_version, Client.API_VERSION) unless Client.API_VERSION.eql?(event.api_version)
      end

      # Retrieves header value from the request headers whose header name matches the given parameter
      def get_header_value(request_headers, header_name)
        if (right_header = request_headers.select { |h| h.name.casecmp(header_name) == 0 }).size != 1
          msg = if right_header.empty?
                  "could not find header '#{header_name}'"
                else # more than 2 headers
                  "encountered multiple occurrences of header '#{header_name}'"
                end
          raise SignatureValidationException.new(message: msg)
        end
        right_header.first.value
      end
    end
  end
end
