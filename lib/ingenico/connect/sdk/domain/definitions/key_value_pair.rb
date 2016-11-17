#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_KeyValuePair KeyValuePair}
      class KeyValuePair < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :key

        # String
        attr_accessor :value

        def to_h
          hash = super
          add_to_hash(hash, 'key', @key)
          add_to_hash(hash, 'value', @value)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('key')
            @key = hash['key']
          end
          if hash.has_key?('value')
            @value = hash['value']
          end
        end
      end
    end
  end
end
