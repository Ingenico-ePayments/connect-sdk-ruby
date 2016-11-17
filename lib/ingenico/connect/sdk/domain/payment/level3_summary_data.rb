#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_Level3SummaryData Level3SummaryData}
      class Level3SummaryData < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :discount_amount

        # Integer
        attr_accessor :duty_amount

        # Integer
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
