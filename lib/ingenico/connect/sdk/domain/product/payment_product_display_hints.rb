#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PaymentProductDisplayHints PaymentProductDisplayHints}
      class PaymentProductDisplayHints < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :display_order

        # String
        attr_accessor :label

        # String
        attr_accessor :logo

        def to_h
          hash = super
          add_to_hash(hash, 'displayOrder', @display_order)
          add_to_hash(hash, 'label', @label)
          add_to_hash(hash, 'logo', @logo)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('displayOrder')
            @display_order = hash['displayOrder']
          end
          if hash.has_key?('label')
            @label = hash['label']
          end
          if hash.has_key?('logo')
            @logo = hash['logo']
          end
        end
      end
    end
  end
end
