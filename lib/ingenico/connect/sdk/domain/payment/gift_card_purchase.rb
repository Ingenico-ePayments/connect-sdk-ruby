#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class GiftCardPurchase < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney}
        attr_accessor :amount_of_money

        # Integer
        attr_accessor :number_of_gift_cards

        def to_h
          hash = super
          add_to_hash(hash, 'amountOfMoney', @amount_of_money)
          add_to_hash(hash, 'numberOfGiftCards', @number_of_gift_cards)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('amountOfMoney')
            if !(hash['amountOfMoney'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']]
            end
            @amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
          end
          if hash.has_key?('numberOfGiftCards')
            @number_of_gift_cards = hash['numberOfGiftCards']
          end
        end
      end
    end
  end
end
