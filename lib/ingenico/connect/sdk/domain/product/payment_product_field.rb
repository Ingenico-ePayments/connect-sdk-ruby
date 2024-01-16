#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/payment_product_field_data_restrictions'
require 'ingenico/connect/sdk/domain/product/payment_product_field_display_hints'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Product
          # @attr [Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldDataRestrictions] data_restrictions
          # @attr [Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldDisplayHints] display_hints
          # @attr [String] id
          # @attr [String] type
          # @attr [true/false] used_for_lookup
          class PaymentProductField < Ingenico::Connect::SDK::DataObject

            attr_accessor :data_restrictions

            attr_accessor :display_hints

            attr_accessor :id

            attr_accessor :type

            attr_accessor :used_for_lookup

            # @return (Hash)
            def to_h
              hash = super
              hash['dataRestrictions'] = @data_restrictions.to_h unless @data_restrictions.nil?
              hash['displayHints'] = @display_hints.to_h unless @display_hints.nil?
              hash['id'] = @id unless @id.nil?
              hash['type'] = @type unless @type.nil?
              hash['usedForLookup'] = @used_for_lookup unless @used_for_lookup.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'dataRestrictions'
                raise TypeError, "value '%s' is not a Hash" % [hash['dataRestrictions']] unless hash['dataRestrictions'].is_a? Hash
                @data_restrictions = Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldDataRestrictions.new_from_hash(hash['dataRestrictions'])
              end
              if hash.has_key? 'displayHints'
                raise TypeError, "value '%s' is not a Hash" % [hash['displayHints']] unless hash['displayHints'].is_a? Hash
                @display_hints = Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldDisplayHints.new_from_hash(hash['displayHints'])
              end
              if hash.has_key? 'id'
                @id = hash['id']
              end
              if hash.has_key? 'type'
                @type = hash['type']
              end
              if hash.has_key? 'usedForLookup'
                @used_for_lookup = hash['usedForLookup']
              end
            end
          end
        end
      end
    end
  end
end
