#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_RangeValidator RangeValidator}
      class RangeValidator < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :max_value

        # Integer
        attr_accessor :min_value

        def to_h
          hash = super
          add_to_hash(hash, 'maxValue', @max_value)
          add_to_hash(hash, 'minValue', @min_value)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('maxValue')
            @max_value = hash['maxValue']
          end
          if hash.has_key?('minValue')
            @min_value = hash['minValue']
          end
        end
      end
    end
  end
end
