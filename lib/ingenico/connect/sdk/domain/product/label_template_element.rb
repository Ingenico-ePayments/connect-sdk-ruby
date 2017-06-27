#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      class LabelTemplateElement < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :attribute_key

        # String
        attr_accessor :mask

        def to_h
          hash = super
          add_to_hash(hash, 'attributeKey', @attribute_key)
          add_to_hash(hash, 'mask', @mask)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('attributeKey')
            @attribute_key = hash['attributeKey']
          end
          if hash.has_key?('mask')
            @mask = hash['mask']
          end
        end
      end
    end
  end
end
