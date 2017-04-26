#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/api_resource'
require 'ingenico/connect/sdk/response_exception'
require 'ingenico/connect/sdk/domain/errors/error_response'
require 'ingenico/connect/sdk/domain/payment/cancel_approval_payment_response'
require 'ingenico/connect/sdk/domain/payment/cancel_payment_response'
require 'ingenico/connect/sdk/domain/payment/create_payment_response'
require 'ingenico/connect/sdk/domain/payment/payment_approval_response'
require 'ingenico/connect/sdk/domain/payment/payment_error_response'
require 'ingenico/connect/sdk/domain/payment/payment_response'
require 'ingenico/connect/sdk/domain/refund/refund_error_response'
require 'ingenico/connect/sdk/domain/refund/refund_response'
require 'ingenico/connect/sdk/domain/token/create_token_response'

module Ingenico::Connect::SDK
  module Merchant
    module Payments

      # Payments client. Thread-safe.
      class PaymentsClient < Ingenico::Connect::SDK::ApiResource

        # parent::       {Ingenico::Connect::SDK::ApiResource}
        # path_context:: Hash of String to String
        def initialize(parent, path_context)
          super(parent, path_context)
        end

        # Resource /{{merchantId}}/payments
        #
        # {https://developer.globalcollect.com/documentation/api/server/#__merchantId__payments_post Create payment}
        # body::    {Ingenico::Connect::SDK::Domain::Payment::CreatePaymentRequest}
        # context:: {Ingenico::Connect::SDK::CallContext}
        # Returns:: {Ingenico::Connect::SDK::Domain::Payment::CreatePaymentResponse}
        # Raises:: {Ingenico::Connect::SDK::DeclinedPaymentException} if the GlobalCollect platform declined / rejected the payment. The payment result will be available from the exception.
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def create(body, context=nil)
          uri = instantiate_uri('/{apiVersion}/{merchantId}/payments', nil)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            body,
            Ingenico::Connect::SDK::Domain::Payment::CreatePaymentResponse,
            context)
        rescue ResponseException => e
          error_type = {
            400 => Ingenico::Connect::SDK::Domain::Payment::PaymentErrorResponse,
            402 => Ingenico::Connect::SDK::Domain::Payment::PaymentErrorResponse,
            403 => Ingenico::Connect::SDK::Domain::Payment::PaymentErrorResponse,
            502 => Ingenico::Connect::SDK::Domain::Payment::PaymentErrorResponse,
            503 => Ingenico::Connect::SDK::Domain::Payment::PaymentErrorResponse,
          }.fetch(e.status_code, Ingenico::Connect::SDK::Domain::Errors::ErrorResponse)
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /{{merchantId}}/payments/{{paymentId}}
        #
        # {https://developer.globalcollect.com/documentation/api/server/#__merchantId__payments__paymentId__get Get payment}
        # payment_id:: String
        # context::    {Ingenico::Connect::SDK::CallContext}
        # Returns:: {Ingenico::Connect::SDK::Domain::Payment::PaymentResponse}
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def get(payment_id, context=nil)
          path_context = {
            'paymentId' => payment_id,
          }
          uri = instantiate_uri('/{apiVersion}/{merchantId}/payments/{paymentId}', path_context)
          return @communicator.get(
            uri,
            client_headers,
            nil,
            Ingenico::Connect::SDK::Domain::Payment::PaymentResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /{{merchantId}}/payments/{{paymentId}}/approve
        #
        # {https://developer.globalcollect.com/documentation/api/server/#__merchantId__payments__paymentId__approve_post Capture payment}
        # payment_id:: String
        # body::       {Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentRequest}
        # context::    {Ingenico::Connect::SDK::CallContext}
        # Returns:: {Ingenico::Connect::SDK::Domain::Payment::PaymentApprovalResponse}
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def approve(payment_id, body, context=nil)
          path_context = {
            'paymentId' => payment_id,
          }
          uri = instantiate_uri('/{apiVersion}/{merchantId}/payments/{paymentId}/approve', path_context)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            body,
            Ingenico::Connect::SDK::Domain::Payment::PaymentApprovalResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /{{merchantId}}/payments/{{paymentId}}/cancel
        #
        # {https://developer.globalcollect.com/documentation/api/server/#__merchantId__payments__paymentId__cancel_post Cancel payment}
        # payment_id:: String
        # context::    {Ingenico::Connect::SDK::CallContext}
        # Returns:: {Ingenico::Connect::SDK::Domain::Payment::CancelPaymentResponse}
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def cancel(payment_id, context=nil)
          path_context = {
            'paymentId' => payment_id,
          }
          uri = instantiate_uri('/{apiVersion}/{merchantId}/payments/{paymentId}/cancel', path_context)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            nil,
            Ingenico::Connect::SDK::Domain::Payment::CancelPaymentResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /{{merchantId}}/payments/{{paymentId}}/cancelapproval
        #
        # {https://developer.globalcollect.com/documentation/api/server/#__merchantId__payments__paymentId__cancelapproval_post Undo capture payment request}
        # payment_id:: String
        # context::    {Ingenico::Connect::SDK::CallContext}
        # Returns:: {Ingenico::Connect::SDK::Domain::Payment::CancelApprovalPaymentResponse}
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def cancelapproval(payment_id, context=nil)
          path_context = {
            'paymentId' => payment_id,
          }
          uri = instantiate_uri('/{apiVersion}/{merchantId}/payments/{paymentId}/cancelapproval', path_context)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            nil,
            Ingenico::Connect::SDK::Domain::Payment::CancelApprovalPaymentResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /{{merchantId}}/payments/{{paymentId}}/processchallenged
        #
        # {https://developer.globalcollect.com/documentation/api/server/#__merchantId__payments__paymentId__processchallenged_post Approves challenged payment}
        # payment_id:: String
        # context::    {Ingenico::Connect::SDK::CallContext}
        # Returns:: {Ingenico::Connect::SDK::Domain::Payment::PaymentResponse}
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def processchallenged(payment_id, context=nil)
          path_context = {
            'paymentId' => payment_id,
          }
          uri = instantiate_uri('/{apiVersion}/{merchantId}/payments/{paymentId}/processchallenged', path_context)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            nil,
            Ingenico::Connect::SDK::Domain::Payment::PaymentResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /{{merchantId}}/payments/{{paymentId}}/refund
        #
        # {https://developer.globalcollect.com/documentation/api/server/#__merchantId__payments__paymentId__refund_post Create refund}
        # payment_id:: String
        # body::       {Ingenico::Connect::SDK::Domain::Refund::RefundRequest}
        # context::    {Ingenico::Connect::SDK::CallContext}
        # Returns:: {Ingenico::Connect::SDK::Domain::Refund::RefundResponse}
        # Raises:: {Ingenico::Connect::SDK::DeclinedRefundException} if the GlobalCollect platform declined / rejected the refund. The refund result will be available from the exception.
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def refund(payment_id, body, context=nil)
          path_context = {
            'paymentId' => payment_id,
          }
          uri = instantiate_uri('/{apiVersion}/{merchantId}/payments/{paymentId}/refund', path_context)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            body,
            Ingenico::Connect::SDK::Domain::Refund::RefundResponse,
            context)
        rescue ResponseException => e
          error_type = {
            400 => Ingenico::Connect::SDK::Domain::Refund::RefundErrorResponse,
            404 => Ingenico::Connect::SDK::Domain::Refund::RefundErrorResponse,
          }.fetch(e.status_code, Ingenico::Connect::SDK::Domain::Errors::ErrorResponse)
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /{{merchantId}}/payments/{{paymentId}}/tokenize
        #
        # {https://developer.globalcollect.com/documentation/api/server/#__merchantId__payments__paymentId__tokenize_post Create a token from payment}
        # payment_id:: String
        # body::       {Ingenico::Connect::SDK::Domain::Payment::TokenizePaymentRequest}
        # context::    {Ingenico::Connect::SDK::CallContext}
        # Returns:: {Ingenico::Connect::SDK::Domain::Token::CreateTokenResponse}
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def tokenize(payment_id, body, context=nil)
          path_context = {
            'paymentId' => payment_id,
          }
          uri = instantiate_uri('/{apiVersion}/{merchantId}/payments/{paymentId}/tokenize', path_context)
          return @communicator.post(
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
      end
    end
  end
end
