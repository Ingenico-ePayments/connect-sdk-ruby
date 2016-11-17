#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Services

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_ConvertAmount ConvertAmount}
      class ConvertAmount < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :converted_amount

        def to_h
          hash = super
          add_to_hash(hash, 'convertedAmount', @converted_amount)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('convertedAmount')
            @converted_amount = hash['convertedAmount']
          end
        end
      end
    end
  end
end
