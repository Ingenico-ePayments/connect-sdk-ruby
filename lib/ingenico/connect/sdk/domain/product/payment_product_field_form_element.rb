#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/value_mapping_element'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PaymentProductFieldFormElement PaymentProductFieldFormElement}
      class PaymentProductFieldFormElement < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :type

        # Array of {Ingenico::Connect::SDK::Domain::Product::ValueMappingElement}
        attr_accessor :value_mapping

        def to_h
          hash = super
          add_to_hash(hash, 'type', @type)
          add_to_hash(hash, 'valueMapping', @value_mapping)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('type')
            @type = hash['type']
          end
          if hash.has_key?('valueMapping')
            if !(hash['valueMapping'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['valueMapping']]
            end
            @value_mapping = []
            hash['valueMapping'].each do |e|
              @value_mapping << Ingenico::Connect::SDK::Domain::Product::ValueMappingElement.new_from_hash(e)
            end
          end
        end
      end
    end
  end
end
