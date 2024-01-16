#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney] amount_of_money
          # @attr [Integer] number_of_gift_cards
          class GiftCardPurchase < Ingenico::Connect::SDK::DataObject

            attr_accessor :amount_of_money

            attr_accessor :number_of_gift_cards

            # @return (Hash)
            def to_h
              hash = super
              hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
              hash['numberOfGiftCards'] = @number_of_gift_cards unless @number_of_gift_cards.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amountOfMoney'
                raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
                @amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
              end
              if hash.has_key? 'numberOfGiftCards'
                @number_of_gift_cards = hash['numberOfGiftCards']
              end
            end
          end
        end
      end
    end
  end
end
