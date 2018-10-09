#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/order_status_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class PaymentStatusOutput < Ingenico::Connect::SDK::Domain::Definitions::OrderStatusOutput

        # true/false
        attr_accessor :is_authorized

        # true/false
        attr_accessor :is_refundable

        # String
        attr_accessor :three_d_secure_status

        def to_h
          hash = super
          add_to_hash(hash, 'isAuthorized', @is_authorized)
          add_to_hash(hash, 'isRefundable', @is_refundable)
          add_to_hash(hash, 'threeDSecureStatus', @three_d_secure_status)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('isAuthorized')
            @is_authorized = hash['isAuthorized']
          end
          if hash.has_key?('isRefundable')
            @is_refundable = hash['isRefundable']
          end
          if hash.has_key?('threeDSecureStatus')
            @three_d_secure_status = hash['threeDSecureStatus']
          end
        end
      end
    end
  end
end
