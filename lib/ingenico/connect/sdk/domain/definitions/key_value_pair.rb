#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

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
