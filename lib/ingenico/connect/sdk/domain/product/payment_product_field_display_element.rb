#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      class PaymentProductFieldDisplayElement < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :id

        # String
        attr_accessor :label

        # String
        attr_accessor :type

        # String
        attr_accessor :value

        def to_h
          hash = super
          add_to_hash(hash, 'id', @id)
          add_to_hash(hash, 'label', @label)
          add_to_hash(hash, 'type', @type)
          add_to_hash(hash, 'value', @value)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('id')
            @id = hash['id']
          end
          if hash.has_key?('label')
            @label = hash['label']
          end
          if hash.has_key?('type')
            @type = hash['type']
          end
          if hash.has_key?('value')
            @value = hash['value']
          end
        end
      end
    end
  end
end
