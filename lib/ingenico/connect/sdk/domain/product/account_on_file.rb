#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/account_on_file_attribute'
require 'ingenico/connect/sdk/domain/product/account_on_file_display_hints'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Product
          # @attr [Array<Ingenico::Connect::SDK::Domain::Product::AccountOnFileAttribute>] attributes
          # @attr [Ingenico::Connect::SDK::Domain::Product::AccountOnFileDisplayHints] display_hints
          # @attr [Integer] id
          # @attr [Integer] payment_product_id
          class AccountOnFile < Ingenico::Connect::SDK::DataObject

            attr_accessor :attributes

            attr_accessor :display_hints

            attr_accessor :id

            attr_accessor :payment_product_id

            # @return (Hash)
            def to_h
              hash = super
              hash['attributes'] = @attributes.collect{|val| val.to_h} unless @attributes.nil?
              hash['displayHints'] = @display_hints.to_h unless @display_hints.nil?
              hash['id'] = @id unless @id.nil?
              hash['paymentProductId'] = @payment_product_id unless @payment_product_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'attributes'
                raise TypeError, "value '%s' is not an Array" % [hash['attributes']] unless hash['attributes'].is_a? Array
                @attributes = []
                hash['attributes'].each do |e|
                  @attributes << Ingenico::Connect::SDK::Domain::Product::AccountOnFileAttribute.new_from_hash(e)
                end
              end
              if hash.has_key? 'displayHints'
                raise TypeError, "value '%s' is not a Hash" % [hash['displayHints']] unless hash['displayHints'].is_a? Hash
                @display_hints = Ingenico::Connect::SDK::Domain::Product::AccountOnFileDisplayHints.new_from_hash(hash['displayHints'])
              end
              if hash.has_key? 'id'
                @id = hash['id']
              end
              if hash.has_key? 'paymentProductId'
                @payment_product_id = hash['paymentProductId']
              end
            end
          end
        end
      end
    end
  end
end
