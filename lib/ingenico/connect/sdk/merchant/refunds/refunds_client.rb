#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/api_resource'
require 'ingenico/connect/sdk/response_exception'
require 'ingenico/connect/sdk/domain/errors/error_response'
require 'ingenico/connect/sdk/domain/refund/find_refunds_response'
require 'ingenico/connect/sdk/domain/refund/refund_response'

module Ingenico::Connect::SDK
  module Merchant
    module Refunds

      # Refunds client. Thread-safe.
      class RefundsClient < Ingenico::Connect::SDK::ApiResource

        # @param parent        [Ingenico::Connect::SDK::ApiResource]
        # @param path_context  [Hash]
        def initialize(parent, path_context)
          super(parent, path_context)
        end

        # Resource /!{merchantId}/refunds - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/refunds/find.html Find refunds}
        # @param query   [Ingenico::Connect::SDK::Merchant::Refunds::FindRefundsParams]
        # @param context [Ingenico::Connect::SDK::CallContext]
        # @return [Ingenico::Connect::SDK::Domain::Refund::FindRefundsResponse]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def find(query, context=nil)
          uri = instantiate_uri('/v1/{merchantId}/refunds', nil)
          return @communicator.get(
            uri,
            client_headers,
            query,
            Ingenico::Connect::SDK::Domain::Refund::FindRefundsResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /!{merchantId}/refunds/!{refundId} - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/refunds/get.html Get refund}
        # @param refund_id [String]
        # @param context   [Ingenico::Connect::SDK::CallContext]
        # @return [Ingenico::Connect::SDK::Domain::Refund::RefundResponse]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def get(refund_id, context=nil)
          path_context = {
            'refundId'.freeze => refund_id,
          }
          uri = instantiate_uri('/v1/{merchantId}/refunds/{refundId}', path_context)
          return @communicator.get(
            uri,
            client_headers,
            nil,
            Ingenico::Connect::SDK::Domain::Refund::RefundResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /!{merchantId}/refunds/!{refundId}/approve - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/refunds/approve.html Approve refund}
        # @param refund_id [String]
        # @param body      [Ingenico::Connect::SDK::Domain::Refund::ApproveRefundRequest]
        # @param context   [Ingenico::Connect::SDK::CallContext]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def approve(refund_id, body, context=nil)
          path_context = {
            'refundId'.freeze => refund_id,
          }
          uri = instantiate_uri('/v1/{merchantId}/refunds/{refundId}/approve', path_context)
          return @communicator.post(
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

        # Resource /!{merchantId}/refunds/!{refundId}/cancel - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/refunds/cancel.html Cancel refund}
        # @param refund_id [String]
        # @param context   [Ingenico::Connect::SDK::CallContext]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def cancel(refund_id, context=nil)
          path_context = {
            'refundId'.freeze => refund_id,
          }
          uri = instantiate_uri('/v1/{merchantId}/refunds/{refundId}/cancel', path_context)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            nil,
            nil,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /!{merchantId}/refunds/!{refundId}/cancelapproval - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/refunds/cancelapproval.html Undo approve refund}
        # @param refund_id [String]
        # @param context   [Ingenico::Connect::SDK::CallContext]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def cancelapproval(refund_id, context=nil)
          path_context = {
            'refundId'.freeze => refund_id,
          }
          uri = instantiate_uri('/v1/{merchantId}/refunds/{refundId}/cancelapproval', path_context)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            nil,
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
