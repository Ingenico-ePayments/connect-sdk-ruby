#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/amount_breakdown'
require 'ingenico/connect/sdk/domain/payment/gift_card_purchase'
require 'ingenico/connect/sdk/domain/payment/line_item'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class ShoppingCart < Ingenico::Connect::SDK::DataObject

        # Array of {Ingenico::Connect::SDK::Domain::Payment::AmountBreakdown}
        attr_accessor :amount_breakdown

        # {Ingenico::Connect::SDK::Domain::Payment::GiftCardPurchase}
        attr_accessor :gift_card_purchase

        # true/false
        attr_accessor :is_pre_order

        # Array of {Ingenico::Connect::SDK::Domain::Payment::LineItem}
        attr_accessor :items

        # String
        attr_accessor :pre_order_item_availability_date

        # true/false
        attr_accessor :re_order_indicator

        def to_h
          hash = super
          add_to_hash(hash, 'amountBreakdown', @amount_breakdown)
          add_to_hash(hash, 'giftCardPurchase', @gift_card_purchase)
          add_to_hash(hash, 'isPreOrder', @is_pre_order)
          add_to_hash(hash, 'items', @items)
          add_to_hash(hash, 'preOrderItemAvailabilityDate', @pre_order_item_availability_date)
          add_to_hash(hash, 'reOrderIndicator', @re_order_indicator)
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
          if hash.has_key?('giftCardPurchase')
            if !(hash['giftCardPurchase'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['giftCardPurchase']]
            end
            @gift_card_purchase = Ingenico::Connect::SDK::Domain::Payment::GiftCardPurchase.new_from_hash(hash['giftCardPurchase'])
          end
          if hash.has_key?('isPreOrder')
            @is_pre_order = hash['isPreOrder']
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
          if hash.has_key?('preOrderItemAvailabilityDate')
            @pre_order_item_availability_date = hash['preOrderItemAvailabilityDate']
          end
          if hash.has_key?('reOrderIndicator')
            @re_order_indicator = hash['reOrderIndicator']
          end
        end
      end
    end
  end
end
