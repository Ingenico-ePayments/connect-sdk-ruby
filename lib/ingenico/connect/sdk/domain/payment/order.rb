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
require 'ingenico/connect/sdk/domain/payment/shopping_cart'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class Order < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Payment::AdditionalOrderInput}
        attr_accessor :additional_input

        # {Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney}
        attr_accessor :amount_of_money

        # {Ingenico::Connect::SDK::Domain::Payment::Customer}
        attr_accessor :customer

        # Array of {Ingenico::Connect::SDK::Domain::Payment::LineItem}
        #
        # Deprecated; Use ShoppingCart.items instead
        attr_accessor :items

        # {Ingenico::Connect::SDK::Domain::Payment::OrderReferences}
        attr_accessor :references

        # {Ingenico::Connect::SDK::Domain::Payment::Seller}
        attr_accessor :seller

        # {Ingenico::Connect::SDK::Domain::Payment::ShoppingCart}
        attr_accessor :shopping_cart

        def to_h
          hash = super
          add_to_hash(hash, 'additionalInput', @additional_input)
          add_to_hash(hash, 'amountOfMoney', @amount_of_money)
          add_to_hash(hash, 'customer', @customer)
          add_to_hash(hash, 'items', @items)
          add_to_hash(hash, 'references', @references)
          add_to_hash(hash, 'seller', @seller)
          add_to_hash(hash, 'shoppingCart', @shopping_cart)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('additionalInput')
            if !(hash['additionalInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['additionalInput']]
            end
            @additional_input = Ingenico::Connect::SDK::Domain::Payment::AdditionalOrderInput.new_from_hash(hash['additionalInput'])
          end
          if hash.has_key?('amountOfMoney')
            if !(hash['amountOfMoney'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']]
            end
            @amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
          end
          if hash.has_key?('customer')
            if !(hash['customer'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['customer']]
            end
            @customer = Ingenico::Connect::SDK::Domain::Payment::Customer.new_from_hash(hash['customer'])
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
          if hash.has_key?('references')
            if !(hash['references'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['references']]
            end
            @references = Ingenico::Connect::SDK::Domain::Payment::OrderReferences.new_from_hash(hash['references'])
          end
          if hash.has_key?('seller')
            if !(hash['seller'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['seller']]
            end
            @seller = Ingenico::Connect::SDK::Domain::Payment::Seller.new_from_hash(hash['seller'])
          end
          if hash.has_key?('shoppingCart')
            if !(hash['shoppingCart'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['shoppingCart']]
            end
            @shopping_cart = Ingenico::Connect::SDK::Domain::Payment::ShoppingCart.new_from_hash(hash['shoppingCart'])
          end
        end
      end
    end
  end
end
