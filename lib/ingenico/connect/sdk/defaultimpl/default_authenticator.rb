require 'openssl' # for HMAC-SHA256
require 'base64'

module Ingenico::Connect::SDK
  module DefaultImpl

    # Authenticates requests made to the GlobalCollect platform using the HMAC algorithm.
    class DefaultAuthenticator < Authenticator

      # HMAC algorithm used to generate the signature
      HMAC_ALGOR = 'SHA256'.freeze
      CONTENT_TYPE = 'Content-Type'.freeze
      DATE = 'Date'.freeze
      XGCS = 'x-gcs'.freeze

      # Construct a new DefaultAuthenticator instance that can sign requests
      # with the provided _api_key_id_ and _secret_api_key_.
      # authorization_type::  The authorization protocol to use for authentication.
      # api_key_id::          Identifier for the secret key used in authentication.
      # secret_api_key::      The secret key that is used to generate the authentication signature.
      def initialize(authorization_type, api_key_id, secret_api_key)
        raise ArgumentError unless authorization_type
        raise ArgumentError unless api_key_id and not api_key_id.strip.empty?
        raise ArgumentError unless secret_api_key and not secret_api_key.strip.empty?

        @authorization_type = authorization_type
        @api_key_id = api_key_id
        @secret_api_key = secret_api_key
      end

      # Creates a signature to authenticate a request.
      # Uses the following parameters:
      # http_method::     'GET', 'PUT', 'POST' or 'DELETE' indicating which HTTP method will be used with the request
      # resource_uri::    URI object that includes #path and #query of the url that will be used, #query may be *nil*
      # request_headers:: {Ingenico::Connect::SDK::RequestHeader} list that contains all headers used by the request
      def create_simple_authentication_signature(http_method, resource_uri, http_headers)
        raise ArgumentError unless http_method and not http_method.strip.empty?
        raise ArgumentError unless resource_uri

        data_to_sign = to_data_to_sign(http_method, resource_uri, http_headers)
        "GCS #{@authorization_type}:#{@api_key_id}:#{create_auth_signature(data_to_sign)}"
      end

      protected

      # Canonizes the _http_method_, _resource_uri_ and _http_headers_ so a unique signature can be generated.
      # Canonical form is as follows:
      # * _http_method_ in upper case
      # * Content-Type
      # * Date header
      # * X-GCS headers sorted alphabetically. Names are in lowercase and values are stripped of excess whitespace
      # * path and query portion of the uri, separated by a question mark
      def to_data_to_sign(http_method, resource_uri, http_headers)
        content_type = ''
        date = ''
        canonical_resource = to_canonical_resource(resource_uri)
        xgc_http_headers = []

        http_headers.each do |header|
          name, value = header.name, header.value
          case
          when name.casecmp(CONTENT_TYPE) == 0
            content_type = value
          when name.casecmp(DATE) == 0
            date = value
          when to_canonical_header_name(name).start_with?(XGCS)
            xgc_http_headers << [ to_canonical_header_name(name), to_canonical_header_value(value) ]
          end
        end if http_headers

        xgc_http_headers.sort! { |(h1, v1), (h2, v2)| h1 <=> h2 } unless xgc_http_headers.empty?

        data = "#{http_method.upcase}\n#{content_type}\n#{date}\n"
        data << xgc_http_headers.inject('') { |s, (k, v)| "#{s}#{k}:#{v}\n" } unless xgc_http_headers.empty?
        data << "#{canonical_resource}\n" unless canonical_resource.nil?
      end

      # Applies the HMAC algorithm to the canonicalized data to obtain an HMAC digest.
      # Afterwards the HMAC digest is encoded using base64 encoding.
      def create_auth_signature(data_to_sign)
        digest = OpenSSL::Digest.new(HMAC_ALGOR)
        hmac = OpenSSL::HMAC.digest(digest, @secret_api_key, data_to_sign)
        Base64.strict_encode64(hmac).strip
      end

      private

      # Returns the encoded URI path without the HTTP method and including all decoded query parameters.
      def to_canonical_resource(resource_uri)
        return "#{resource_uri.path}?#{resource_uri.query}" if resource_uri.query
        return resource_uri.path
      end

      def to_canonical_header_name(original_name)
        original_name ? original_name.downcase : original_name
      end

      # Strips a header value of excess whitespace to produce a canonical value
      def to_canonical_header_value(original_value)
        return '' unless original_value
        original_value.gsub(/\r?\n[\s&&[^\r\n]]*/, ' ').strip
      end
    end
  end
end
