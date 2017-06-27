#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Deprecated; Use Order.shoppingCart instead
      class Level3SummaryData < Ingenico::Connect::SDK::DataObject

        # Integer
        #
        # Deprecated; Use ShoppingCart.amountbreakdown with type DISCOUNT instead
        attr_accessor :discount_amount

        # Integer
        #
        # Deprecated; Use ShoppingCart.amountbreakdown with type DUTY instead
        attr_accessor :duty_amount

        # Integer
        #
        # Deprecated; Use ShoppingCart.amountbreakdown with type SHIPPING instead
        attr_accessor :shipping_amount

        def to_h
          hash = super
          add_to_hash(hash, 'discountAmount', @discount_amount)
          add_to_hash(hash, 'dutyAmount', @duty_amount)
          add_to_hash(hash, 'shippingAmount', @shipping_amount)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('discountAmount')
            @discount_amount = hash['discountAmount']
          end
          if hash.has_key?('dutyAmount')
            @duty_amount = hash['dutyAmount']
          end
          if hash.has_key?('shippingAmount')
            @shipping_amount = hash['shippingAmount']
          end
        end
      end
    end
  end
end
