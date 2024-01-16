#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/value_mapping_element'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Product
          # @attr [String] type
          # @attr [Array<Ingenico::Connect::SDK::Domain::Product::ValueMappingElement>] value_mapping
          class PaymentProductFieldFormElement < Ingenico::Connect::SDK::DataObject

            attr_accessor :type

            attr_accessor :value_mapping

            # @return (Hash)
            def to_h
              hash = super
              hash['type'] = @type unless @type.nil?
              hash['valueMapping'] = @value_mapping.collect{|val| val.to_h} unless @value_mapping.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'type'
                @type = hash['type']
              end
              if hash.has_key? 'valueMapping'
                raise TypeError, "value '%s' is not an Array" % [hash['valueMapping']] unless hash['valueMapping'].is_a? Array
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
  end
end
