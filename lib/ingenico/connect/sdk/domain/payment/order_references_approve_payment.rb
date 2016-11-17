#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_OrderReferencesApprovePayment OrderReferencesApprovePayment}
      class OrderReferencesApprovePayment < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :merchant_reference

        def to_h
          hash = super
          add_to_hash(hash, 'merchantReference', @merchant_reference)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('merchantReference')
            @merchant_reference = hash['merchantReference']
          end
        end
      end
    end
  end
end
