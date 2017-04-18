#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_AmountBreakdown AmountBreakdown}
      class AmountBreakdown < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :amount

        # String
        attr_accessor :type

        def to_h
          hash = super
          add_to_hash(hash, 'amount', @amount)
          add_to_hash(hash, 'type', @type)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('amount')
            @amount = hash['amount']
          end
          if hash.has_key?('type')
            @type = hash['type']
          end
        end
      end
    end
  end
end
