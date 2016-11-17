#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PaymentProductFieldTooltip PaymentProductFieldTooltip}
      class PaymentProductFieldTooltip < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :image

        # String
        attr_accessor :label

        def to_h
          hash = super
          add_to_hash(hash, 'image', @image)
          add_to_hash(hash, 'label', @label)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('image')
            @image = hash['image']
          end
          if hash.has_key?('label')
            @label = hash['label']
          end
        end
      end
    end
  end
end
