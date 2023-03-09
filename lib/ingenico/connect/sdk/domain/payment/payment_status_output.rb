#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/order_status_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [true/false] is_authorized
      # @attr [true/false] is_refundable
      # @attr [true/false] is_retriable
      # @attr [String] three_d_secure_status
      class PaymentStatusOutput < Ingenico::Connect::SDK::Domain::Definitions::OrderStatusOutput

        attr_accessor :is_authorized

        attr_accessor :is_refundable

        attr_accessor :is_retriable

        attr_accessor :three_d_secure_status

        # @return (Hash)
        def to_h
          hash = super
          hash['isAuthorized'] = @is_authorized unless @is_authorized.nil?
          hash['isRefundable'] = @is_refundable unless @is_refundable.nil?
          hash['isRetriable'] = @is_retriable unless @is_retriable.nil?
          hash['threeDSecureStatus'] = @three_d_secure_status unless @three_d_secure_status.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'isAuthorized'
            @is_authorized = hash['isAuthorized']
          end
          if hash.has_key? 'isRefundable'
            @is_refundable = hash['isRefundable']
          end
          if hash.has_key? 'isRetriable'
            @is_retriable = hash['isRetriable']
          end
          if hash.has_key? 'threeDSecureStatus'
            @three_d_secure_status = hash['threeDSecureStatus']
          end
        end
      end
    end
  end
end
