#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/payment/additional_order_input'
require 'ingenico/connect/sdk/domain/payment/customer'
require 'ingenico/connect/sdk/domain/payment/line_item'
require 'ingenico/connect/sdk/domain/payment/order_references'
require 'ingenico/connect/sdk/domain/payment/seller'
require 'ingenico/connect/sdk/domain/payment/shipping'
require 'ingenico/connect/sdk/domain/payment/shopping_cart'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Ingenico::Connect::SDK::Domain::Payment::AdditionalOrderInput] additional_input
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney] amount_of_money
      # @attr [Ingenico::Connect::SDK::Domain::Payment::Customer] customer
      # @attr [Array<Ingenico::Connect::SDK::Domain::Payment::LineItem>] items
      # @attr [Ingenico::Connect::SDK::Domain::Payment::OrderReferences] references
      # @attr [Ingenico::Connect::SDK::Domain::Payment::Seller] seller
      # @attr [Ingenico::Connect::SDK::Domain::Payment::Shipping] shipping
      # @attr [Ingenico::Connect::SDK::Domain::Payment::ShoppingCart] shopping_cart
      class Order < Ingenico::Connect::SDK::DataObject

        attr_accessor :additional_input

        attr_accessor :amount_of_money

        attr_accessor :customer

        #
        # @deprecated Use shoppingCart.items instead
        attr_accessor :items

        attr_accessor :references

        #
        # @deprecated Use Merchant.seller instead
        attr_accessor :seller

        attr_accessor :shipping

        attr_accessor :shopping_cart

        # @return (Hash)
        def to_h
          hash = super
          hash['additionalInput'] = @additional_input.to_h unless @additional_input.nil?
          hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
          hash['customer'] = @customer.to_h unless @customer.nil?
          hash['items'] = @items.collect{|val| val.to_h} unless @items.nil?
          hash['references'] = @references.to_h unless @references.nil?
          hash['seller'] = @seller.to_h unless @seller.nil?
          hash['shipping'] = @shipping.to_h unless @shipping.nil?
          hash['shoppingCart'] = @shopping_cart.to_h unless @shopping_cart.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'additionalInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['additionalInput']] unless hash['additionalInput'].is_a? Hash
            @additional_input = Ingenico::Connect::SDK::Domain::Payment::AdditionalOrderInput.new_from_hash(hash['additionalInput'])
          end
          if hash.has_key? 'amountOfMoney'
            raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
            @amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
          end
          if hash.has_key? 'customer'
            raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
            @customer = Ingenico::Connect::SDK::Domain::Payment::Customer.new_from_hash(hash['customer'])
          end
          if hash.has_key? 'items'
            raise TypeError, "value '%s' is not an Array" % [hash['items']] unless hash['items'].is_a? Array
            @items = []
            hash['items'].each do |e|
              @items << Ingenico::Connect::SDK::Domain::Payment::LineItem.new_from_hash(e)
            end
          end
          if hash.has_key? 'references'
            raise TypeError, "value '%s' is not a Hash" % [hash['references']] unless hash['references'].is_a? Hash
            @references = Ingenico::Connect::SDK::Domain::Payment::OrderReferences.new_from_hash(hash['references'])
          end
          if hash.has_key? 'seller'
            raise TypeError, "value '%s' is not a Hash" % [hash['seller']] unless hash['seller'].is_a? Hash
            @seller = Ingenico::Connect::SDK::Domain::Payment::Seller.new_from_hash(hash['seller'])
          end
          if hash.has_key? 'shipping'
            raise TypeError, "value '%s' is not a Hash" % [hash['shipping']] unless hash['shipping'].is_a? Hash
            @shipping = Ingenico::Connect::SDK::Domain::Payment::Shipping.new_from_hash(hash['shipping'])
          end
          if hash.has_key? 'shoppingCart'
            raise TypeError, "value '%s' is not a Hash" % [hash['shoppingCart']] unless hash['shoppingCart'].is_a? Hash
            @shopping_cart = Ingenico::Connect::SDK::Domain::Payment::ShoppingCart.new_from_hash(hash['shoppingCart'])
          end
        end
      end
    end
  end
end
