#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/api_resource'
require 'ingenico/connect/sdk/response_exception'
require 'ingenico/connect/sdk/domain/errors/error_response'
require 'ingenico/connect/sdk/domain/mandates/create_mandate_response'
require 'ingenico/connect/sdk/domain/mandates/get_mandate_response'

module Ingenico::Connect::SDK
  module Merchant
    module Mandates

      # Mandates client. Thread-safe.
      class MandatesClient < Ingenico::Connect::SDK::ApiResource

        # @param parent        [Ingenico::Connect::SDK::ApiResource]
        # @param path_context  [Hash]
        def initialize(parent, path_context)
          super(parent, path_context)
        end

        # Resource /!{merchantId}/mandates - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/mandates/create.html Create mandate}
        # @param body    [Ingenico::Connect::SDK::Domain::Mandates::CreateMandateRequest]
        # @param context [Ingenico::Connect::SDK::CallContext]
        # @return [Ingenico::Connect::SDK::Domain::Mandates::CreateMandateResponse]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def create(body, context=nil)
          uri = instantiate_uri('/v1/{merchantId}/mandates', nil)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            body,
            Ingenico::Connect::SDK::Domain::Mandates::CreateMandateResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /!{merchantId}/mandates/!{uniqueMandateReference} - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/mandates/createWithMandateReference.html Create mandate with mandatereference}
        # @param unique_mandate_reference [String]
        # @param body                     [Ingenico::Connect::SDK::Domain::Mandates::CreateMandateRequest]
        # @param context                  [Ingenico::Connect::SDK::CallContext]
        # @return [Ingenico::Connect::SDK::Domain::Mandates::CreateMandateResponse]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def create_with_mandate_reference(unique_mandate_reference, body, context=nil)
          path_context = {
            'uniqueMandateReference'.freeze => unique_mandate_reference,
          }
          uri = instantiate_uri('/v1/{merchantId}/mandates/{uniqueMandateReference}', path_context)
          return @communicator.put(
            uri,
            client_headers,
            nil,
            body,
            Ingenico::Connect::SDK::Domain::Mandates::CreateMandateResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /!{merchantId}/mandates/!{uniqueMandateReference} - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/mandates/get.html Get mandate}
        # @param unique_mandate_reference [String]
        # @param context                  [Ingenico::Connect::SDK::CallContext]
        # @return [Ingenico::Connect::SDK::Domain::Mandates::GetMandateResponse]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def get(unique_mandate_reference, context=nil)
          path_context = {
            'uniqueMandateReference'.freeze => unique_mandate_reference,
          }
          uri = instantiate_uri('/v1/{merchantId}/mandates/{uniqueMandateReference}', path_context)
          return @communicator.get(
            uri,
            client_headers,
            nil,
            Ingenico::Connect::SDK::Domain::Mandates::GetMandateResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /!{merchantId}/mandates/!{uniqueMandateReference}/block - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/mandates/block.html Block mandate}
        # @param unique_mandate_reference [String]
        # @param context                  [Ingenico::Connect::SDK::CallContext]
        # @return [Ingenico::Connect::SDK::Domain::Mandates::GetMandateResponse]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def block(unique_mandate_reference, context=nil)
          path_context = {
            'uniqueMandateReference'.freeze => unique_mandate_reference,
          }
          uri = instantiate_uri('/v1/{merchantId}/mandates/{uniqueMandateReference}/block', path_context)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            nil,
            Ingenico::Connect::SDK::Domain::Mandates::GetMandateResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /!{merchantId}/mandates/!{uniqueMandateReference}/unblock - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/mandates/unblock.html Unblock mandate}
        # @param unique_mandate_reference [String]
        # @param context                  [Ingenico::Connect::SDK::CallContext]
        # @return [Ingenico::Connect::SDK::Domain::Mandates::GetMandateResponse]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def unblock(unique_mandate_reference, context=nil)
          path_context = {
            'uniqueMandateReference'.freeze => unique_mandate_reference,
          }
          uri = instantiate_uri('/v1/{merchantId}/mandates/{uniqueMandateReference}/unblock', path_context)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            nil,
            Ingenico::Connect::SDK::Domain::Mandates::GetMandateResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /!{merchantId}/mandates/!{uniqueMandateReference}/revoke - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/mandates/revoke.html Revoke mandate}
        # @param unique_mandate_reference [String]
        # @param context                  [Ingenico::Connect::SDK::CallContext]
        # @return [Ingenico::Connect::SDK::Domain::Mandates::GetMandateResponse]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def revoke(unique_mandate_reference, context=nil)
          path_context = {
            'uniqueMandateReference'.freeze => unique_mandate_reference,
          }
          uri = instantiate_uri('/v1/{merchantId}/mandates/{uniqueMandateReference}/revoke', path_context)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            nil,
            Ingenico::Connect::SDK::Domain::Mandates::GetMandateResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end
      end
    end
  end
end
