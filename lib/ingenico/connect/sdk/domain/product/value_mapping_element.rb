#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/payment_product_field_display_element'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # @attr [Array<Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldDisplayElement>] display_elements
      # @attr [String] display_name
      # @attr [String] value
      class ValueMappingElement < Ingenico::Connect::SDK::DataObject

        attr_accessor :display_elements

        #
        # @deprecated Use displayElements instead with ID 'displayName'
        attr_accessor :display_name

        attr_accessor :value

        # @return (Hash)
        def to_h
          hash = super
          hash['displayElements'] = @display_elements.collect{|val| val.to_h} unless @display_elements.nil?
          hash['displayName'] = @display_name unless @display_name.nil?
          hash['value'] = @value unless @value.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'displayElements'
            raise TypeError, "value '%s' is not an Array" % [hash['displayElements']] unless hash['displayElements'].is_a? Array
            @display_elements = []
            hash['displayElements'].each do |e|
              @display_elements << Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldDisplayElement.new_from_hash(e)
            end
          end
          if hash.has_key? 'displayName'
            @display_name = hash['displayName']
          end
          if hash.has_key? 'value'
            @value = hash['value']
          end
        end
      end
    end
  end
end
