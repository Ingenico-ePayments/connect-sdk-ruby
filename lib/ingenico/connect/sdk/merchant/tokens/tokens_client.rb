#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/api_resource'
require 'ingenico/connect/sdk/response_exception'
require 'ingenico/connect/sdk/domain/errors/error_response'
require 'ingenico/connect/sdk/domain/token/create_token_response'
require 'ingenico/connect/sdk/domain/token/token_response'

module Ingenico
  module Connect
    module SDK
      module Merchant
        module Tokens
          # Tokens client. Thread-safe.
          class TokensClient < Ingenico::Connect::SDK::ApiResource

            # @param parent       [Ingenico::Connect::SDK::ApiResource]
            # @param path_context [Hash]
            def initialize(parent, path_context)
              super(parent, path_context)
            end

            # Resource /!{merchantId}/tokens - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/tokens/create.html Create token}
            # @param body    [Ingenico::Connect::SDK::Domain::Token::CreateTokenRequest]
            # @param context [Ingenico::Connect::SDK::CallContext]
            # @return [Ingenico::Connect::SDK::Domain::Token::CreateTokenResponse]
            # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
            # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
            # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
            # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
            #        or there was a conflict (HTTP status code 404, 409 or 410)
            # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
            #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
            #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
            # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
            def create(body, context = nil)
              uri = instantiate_uri('/v1/{merchantId}/tokens', nil)
              @communicator.post(
                uri,
                client_headers,
                nil,
                body,
                Ingenico::Connect::SDK::Domain::Token::CreateTokenResponse,
                context)
            rescue ResponseException => e
              error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
              error_object = @communicator.marshaller.unmarshal(e.body, error_type)
              raise create_exception(e.status_code, e.body, error_object, context)
            end

            # Resource /!{merchantId}/tokens/!{tokenId} - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/tokens/get.html Get token}
            # @param token_id [String]
            # @param context  [Ingenico::Connect::SDK::CallContext]
            # @return [Ingenico::Connect::SDK::Domain::Token::TokenResponse]
            # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
            # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
            # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
            # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
            #        or there was a conflict (HTTP status code 404, 409 or 410)
            # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
            #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
            #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
            # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
            def get(token_id, context = nil)
              path_context = {
                'tokenId'.freeze => token_id,
              }
              uri = instantiate_uri('/v1/{merchantId}/tokens/{tokenId}', path_context)
              @communicator.get(
                uri,
                client_headers,
                nil,
                Ingenico::Connect::SDK::Domain::Token::TokenResponse,
                context)
            rescue ResponseException => e
              error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
              error_object = @communicator.marshaller.unmarshal(e.body, error_type)
              raise create_exception(e.status_code, e.body, error_object, context)
            end

            # Resource /!{merchantId}/tokens/!{tokenId} - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/tokens/update.html Update token}
            # @param token_id [String]
            # @param body     [Ingenico::Connect::SDK::Domain::Token::UpdateTokenRequest]
            # @param context  [Ingenico::Connect::SDK::CallContext]
            # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
            # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
            # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
            # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
            #        or there was a conflict (HTTP status code 404, 409 or 410)
            # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
            #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
            #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
            # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
            def update(token_id, body, context = nil)
              path_context = {
                'tokenId'.freeze => token_id,
              }
              uri = instantiate_uri('/v1/{merchantId}/tokens/{tokenId}', path_context)
              @communicator.put(
                uri,
                client_headers,
                nil,
                body,
                nil,
                context)
            rescue ResponseException => e
              error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
              error_object = @communicator.marshaller.unmarshal(e.body, error_type)
              raise create_exception(e.status_code, e.body, error_object, context)
            end

            # Resource /!{merchantId}/tokens/!{tokenId} - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/tokens/delete.html Delete token}
            # @param token_id [String]
            # @param query    [Ingenico::Connect::SDK::Merchant::Tokens::DeleteTokenParams]
            # @param context  [Ingenico::Connect::SDK::CallContext]
            # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
            # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
            # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
            # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
            #        or there was a conflict (HTTP status code 404, 409 or 410)
            # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
            #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
            #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
            # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
            def delete(token_id, query, context = nil)
              path_context = {
                'tokenId'.freeze => token_id,
              }
              uri = instantiate_uri('/v1/{merchantId}/tokens/{tokenId}', path_context)
              @communicator.delete(
                uri,
                client_headers,
                query,
                nil,
                context)
            rescue ResponseException => e
              error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
              error_object = @communicator.marshaller.unmarshal(e.body, error_type)
              raise create_exception(e.status_code, e.body, error_object, context)
            end

            # Resource /!{merchantId}/tokens/!{tokenId}/approvesepadirectdebit - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/tokens/approvesepadirectdebit.html Approve SEPA DD mandate}
            # @param token_id [String]
            # @param body     [Ingenico::Connect::SDK::Domain::Token::ApproveTokenRequest]
            # @param context  [Ingenico::Connect::SDK::CallContext]
            # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
            # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
            # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
            # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
            #        or there was a conflict (HTTP status code 404, 409 or 410)
            # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
            #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
            #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
            # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
            def approvesepadirectdebit(token_id, body, context = nil)
              path_context = {
                'tokenId'.freeze => token_id,
              }
              uri = instantiate_uri('/v1/{merchantId}/tokens/{tokenId}/approvesepadirectdebit', path_context)
              @communicator.post(
                uri,
                client_headers,
                nil,
                body,
                nil,
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
  end
end
