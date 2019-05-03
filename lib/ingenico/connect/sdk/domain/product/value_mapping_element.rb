#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/payment_product_field_display_element'

module Ingenico::Connect::SDK
  module Domain
    module Product

      class ValueMappingElement < Ingenico::Connect::SDK::DataObject

        # Array of {Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldDisplayElement}
        attr_accessor :display_elements

        # String
        #
        # Deprecated; Use displayElements instead with ID 'displayName'
        attr_accessor :display_name

        # String
        attr_accessor :value

        def to_h
          hash = super
          add_to_hash(hash, 'displayElements', @display_elements)
          add_to_hash(hash, 'displayName', @display_name)
          add_to_hash(hash, 'value', @value)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('displayElements')
            if !(hash['displayElements'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['displayElements']]
            end
            @display_elements = []
            hash['displayElements'].each do |e|
              @display_elements << Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldDisplayElement.new_from_hash(e)
            end
          end
          if hash.has_key?('displayName')
            @display_name = hash['displayName']
          end
          if hash.has_key?('value')
            @value = hash['value']
          end
        end
      end
    end
  end
end
