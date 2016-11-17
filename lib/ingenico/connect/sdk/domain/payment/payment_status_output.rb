#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/domain/definitions/order_status_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PaymentStatusOutput PaymentStatusOutput}
      class PaymentStatusOutput < Ingenico::Connect::SDK::Domain::Definitions::OrderStatusOutput

        # true/false
        attr_accessor :is_authorized

        # true/false
        attr_accessor :is_refundable

        def to_h
          hash = super
          add_to_hash(hash, 'isAuthorized', @is_authorized)
          add_to_hash(hash, 'isRefundable', @is_refundable)
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
        end
      end
    end
  end
end
