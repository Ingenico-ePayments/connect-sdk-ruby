#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/amount_breakdown'
require 'ingenico/connect/sdk/domain/payment/gift_card_purchase'
require 'ingenico/connect/sdk/domain/payment/line_item'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [Array<Ingenico::Connect::SDK::Domain::Payment::AmountBreakdown>] amount_breakdown
          # @attr [Ingenico::Connect::SDK::Domain::Payment::GiftCardPurchase] gift_card_purchase
          # @attr [true/false] is_pre_order
          # @attr [Array<Ingenico::Connect::SDK::Domain::Payment::LineItem>] items
          # @attr [String] pre_order_item_availability_date
          # @attr [true/false] re_order_indicator
          class ShoppingCart < Ingenico::Connect::SDK::DataObject

            attr_accessor :amount_breakdown

            attr_accessor :gift_card_purchase

            attr_accessor :is_pre_order

            attr_accessor :items

            attr_accessor :pre_order_item_availability_date

            attr_accessor :re_order_indicator

            # @return (Hash)
            def to_h
              hash = super
              hash['amountBreakdown'] = @amount_breakdown.collect{|val| val.to_h} unless @amount_breakdown.nil?
              hash['giftCardPurchase'] = @gift_card_purchase.to_h unless @gift_card_purchase.nil?
              hash['isPreOrder'] = @is_pre_order unless @is_pre_order.nil?
              hash['items'] = @items.collect{|val| val.to_h} unless @items.nil?
              hash['preOrderItemAvailabilityDate'] = @pre_order_item_availability_date unless @pre_order_item_availability_date.nil?
              hash['reOrderIndicator'] = @re_order_indicator unless @re_order_indicator.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amountBreakdown'
                raise TypeError, "value '%s' is not an Array" % [hash['amountBreakdown']] unless hash['amountBreakdown'].is_a? Array
                @amount_breakdown = []
                hash['amountBreakdown'].each do |e|
                  @amount_breakdown << Ingenico::Connect::SDK::Domain::Payment::AmountBreakdown.new_from_hash(e)
                end
              end
              if hash.has_key? 'giftCardPurchase'
                raise TypeError, "value '%s' is not a Hash" % [hash['giftCardPurchase']] unless hash['giftCardPurchase'].is_a? Hash
                @gift_card_purchase = Ingenico::Connect::SDK::Domain::Payment::GiftCardPurchase.new_from_hash(hash['giftCardPurchase'])
              end
              if hash.has_key? 'isPreOrder'
                @is_pre_order = hash['isPreOrder']
              end
              if hash.has_key? 'items'
                raise TypeError, "value '%s' is not an Array" % [hash['items']] unless hash['items'].is_a? Array
                @items = []
                hash['items'].each do |e|
                  @items << Ingenico::Connect::SDK::Domain::Payment::LineItem.new_from_hash(e)
                end
              end
              if hash.has_key? 'preOrderItemAvailabilityDate'
                @pre_order_item_availability_date = hash['preOrderItemAvailabilityDate']
              end
              if hash.has_key? 'reOrderIndicator'
                @re_order_indicator = hash['reOrderIndicator']
              end
            end
          end
        end
      end
    end
  end
end
