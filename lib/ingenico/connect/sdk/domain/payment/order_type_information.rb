#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_OrderTypeInformation OrderTypeInformation}
      class OrderTypeInformation < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :purchase_type

        # String
        attr_accessor :usage_type

        def to_h
          hash = super
          add_to_hash(hash, 'purchaseType', @purchase_type)
          add_to_hash(hash, 'usageType', @usage_type)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('purchaseType')
            @purchase_type = hash['purchaseType']
          end
          if hash.has_key?('usageType')
            @usage_type = hash['usageType']
          end
        end
      end
    end
  end
end
