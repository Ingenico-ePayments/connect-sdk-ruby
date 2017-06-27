#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/payment_product_field_data_restrictions'
require 'ingenico/connect/sdk/domain/product/payment_product_field_display_hints'

module Ingenico::Connect::SDK
  module Domain
    module Product

      class PaymentProductField < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldDataRestrictions}
        attr_accessor :data_restrictions

        # {Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldDisplayHints}
        attr_accessor :display_hints

        # String
        attr_accessor :id

        # String
        attr_accessor :type

        def to_h
          hash = super
          add_to_hash(hash, 'dataRestrictions', @data_restrictions)
          add_to_hash(hash, 'displayHints', @display_hints)
          add_to_hash(hash, 'id', @id)
          add_to_hash(hash, 'type', @type)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('dataRestrictions')
            if !(hash['dataRestrictions'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['dataRestrictions']]
            end
            @data_restrictions = Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldDataRestrictions.new_from_hash(hash['dataRestrictions'])
          end
          if hash.has_key?('displayHints')
            if !(hash['displayHints'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['displayHints']]
            end
            @display_hints = Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldDisplayHints.new_from_hash(hash['displayHints'])
          end
          if hash.has_key?('id')
            @id = hash['id']
          end
          if hash.has_key?('type')
            @type = hash['type']
          end
        end
      end
    end
  end
end
