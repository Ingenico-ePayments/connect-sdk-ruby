require 'ingenico/connect/sdk/api_exception'
require 'ingenico/connect/sdk/authorization_exception'
require 'ingenico/connect/sdk/declined_payment_exception'
require 'ingenico/connect/sdk/declined_payout_exception'
require 'ingenico/connect/sdk/declined_refund_exception'
require 'ingenico/connect/sdk/domain/errors/error_response'
require 'ingenico/connect/sdk/domain/payment/payment_error_response'
require 'ingenico/connect/sdk/domain/payout/payout_error_response'
require 'ingenico/connect/sdk/domain/refund/refund_error_response'
require 'ingenico/connect/sdk/global_collect_exception'
require 'ingenico/connect/sdk/idempotence_exception'
require 'ingenico/connect/sdk/reference_exception'
require 'ingenico/connect/sdk/request_header'
require 'ingenico/connect/sdk/validation_exception'

module Ingenico
  module Connect
    module SDK
      # Base class of all Ingenico ePayments platform API resources.
      # Provides shared functionality to facilitate communication with the Ingenico ePayments platform.
      #
      # @attr_reader [Ingenico::Connect::SDK::Communicator] communicator Communicator instance that provides communication with the Ingenico ePayments platform.
      # @attr_reader [String] client_meta_info JSON string containing client info specific to the current client.
      class ApiResource

        # Creates a new ApiResource.
        #
        # @param arg              [Ingenico::Connect::SDK::ApiResource, Ingenico::Connect::SDK::Communicator] parent class or Communicator instance.
        #                         If a parent class is given its communicator will be used for communication.
        # @param path_context     [Hash] hash that contains substitutions for generic locations in the URL path.
        #                         This hash will be used to instantiate a concrete URL used to access specific resources.
        #                         For example in the URL https://eu.sandbox.api-ingenico.com/!{version}/!{merchantId}/payments
        #                         !{version} and !{merchantId} can be instantiated using the hash
        #                         !{'version' => 'v1', 'merchantId' => '1234'}. The final URL in this case will be
        #                         https://eu.sandbox.api-ingenico.com/v1/1234/payments.
        # @param client_meta_info [String] JSON string containing the meta data for the client.
        def initialize(arg, path_context, client_meta_info = false)
          if client_meta_info == false
            if arg.nil?
              raise ArgumentError.new('parent is required')
            end
            @parent = arg
            @communicator = arg.communicator
            @path_context = path_context
            @client_meta_info = arg.client_meta_info
          else
            if arg.nil?
              raise ArgumentError.new('communicator is required')
            end
            @parent = nil
            @communicator = arg
            @path_context = path_context
            @client_meta_info = client_meta_info
          end
        end

        attr_reader :communicator
        attr_reader :client_meta_info

        protected

        # @return [Array<Ingenico::Connect::SDK::RequestHeader>, nil] the client headers,
        #         including the X-GCS-ClientMetaInfo header if meta data for the client is available
        def client_headers
          if @client_meta_info.nil?
            nil
          else
            [RequestHeader.new('X-GCS-ClientMetaInfo', @client_meta_info)]
          end
        end

        def instantiate_uri(uri, path_context = false)
          if path_context == false
            uri = replace_all(uri, @path_context)
            unless @parent.nil?
              uri = @parent.instantiate_uri(uri)
            end
            uri
          else
            uri = replace_all(uri, path_context)
            instantiate_uri(uri)
          end
        end

        def create_exception(status_code, response_body, error_object, context)
          if error_object.is_a?(Ingenico::Connect::SDK::Domain::Payment::PaymentErrorResponse) && !error_object.payment_result.nil?
            return DeclinedPaymentException.new(status_code, response_body, error_object)
          elsif error_object.is_a?(Ingenico::Connect::SDK::Domain::Payout::PayoutErrorResponse) && !error_object.payout_result.nil?
            return DeclinedPayoutException.new(status_code, response_body, error_object)
          elsif error_object.is_a?(Ingenico::Connect::SDK::Domain::Refund::RefundErrorResponse) && !error_object.refund_result.nil?
            return DeclinedRefundException.new(status_code, response_body, error_object)
          end
          if !(error_object.is_a?(Ingenico::Connect::SDK::Domain::Payment::PaymentErrorResponse) ||
            error_object.is_a?(Ingenico::Connect::SDK::Domain::Payout::PayoutErrorResponse) ||
            error_object.is_a?(Ingenico::Connect::SDK::Domain::Refund::RefundErrorResponse) ||
            error_object.is_a?(Ingenico::Connect::SDK::Domain::Errors::ErrorResponse))
            raise ArgumentError.new("unsupported error object type: " + error_object.class.name)
          else
            error_id = error_object.error_id
            errors = error_object.errors
          end
          case status_code
          when 400
            return ValidationException.new(status_code, response_body, error_id, errors)
          when 403
            return AuthorizationException.new(status_code, response_body, error_id, errors)
          when 404, 410
            return ReferenceException.new(status_code, response_body, error_id, errors)
          when 409
            if is_idempotence_error(errors, context)
              idempotence_key = context.idempotence_key
              idempotence_request_timestamp = context.idempotence_request_timestamp
              return IdempotenceException.new(status_code, response_body, error_id,
                                              errors, idempotence_key,
                                              idempotence_request_timestamp)
            else
              return ReferenceException.new(status_code, response_body, error_id, errors)
            end
          when 500, 502, 503
            return GlobalCollectException.new(status_code, response_body, error_id, errors)
          else
            return ApiException.new(status_code, response_body, error_id, errors)
          end
        end

        private

        def replace_all(uri, path_context)
          unless path_context.nil?
            path_context.each do |key, value|
              uri = uri.gsub('{' + key + '}', value)
            end
          end
          uri
        end

        def is_idempotence_error(errors, context)
          !context.nil? && !context.idempotence_key.nil? && errors.length == 1 &&
            errors[0].code == '1409'
        end
      end
    end
  end
end
