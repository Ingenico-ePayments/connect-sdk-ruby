#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/amount_breakdown'
require 'ingenico/connect/sdk/domain/payment/line_item'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class ShoppingCart < Ingenico::Connect::SDK::DataObject

        # Array of {Ingenico::Connect::SDK::Domain::Payment::AmountBreakdown}
        attr_accessor :amount_breakdown

        # Array of {Ingenico::Connect::SDK::Domain::Payment::LineItem}
        attr_accessor :items

        def to_h
          hash = super
          add_to_hash(hash, 'amountBreakdown', @amount_breakdown)
          add_to_hash(hash, 'items', @items)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('amountBreakdown')
            if !(hash['amountBreakdown'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['amountBreakdown']]
            end
            @amount_breakdown = []
            hash['amountBreakdown'].each do |e|
              @amount_breakdown << Ingenico::Connect::SDK::Domain::Payment::AmountBreakdown.new_from_hash(e)
            end
          end
          if hash.has_key?('items')
            if !(hash['items'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['items']]
            end
            @items = []
            hash['items'].each do |e|
              @items << Ingenico::Connect::SDK::Domain::Payment::LineItem.new_from_hash(e)
            end
          end
        end
      end
    end
  end
end
