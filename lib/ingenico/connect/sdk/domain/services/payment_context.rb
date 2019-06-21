#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'

module Ingenico::Connect::SDK
  module Domain
    module Services

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney] amount_of_money
      # @attr [String] country_code
      # @attr [true/false] is_recurring
      class PaymentContext < Ingenico::Connect::SDK::DataObject

        attr_accessor :amount_of_money

        attr_accessor :country_code

        attr_accessor :is_recurring

        # @return (Hash)
        def to_h
          hash = super
          hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
          hash['countryCode'] = @country_code unless @country_code.nil?
          hash['isRecurring'] = @is_recurring unless @is_recurring.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'amountOfMoney'
            raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
            @amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
          end
          if hash.has_key? 'countryCode'
            @country_code = hash['countryCode']
          end
          if hash.has_key? 'isRecurring'
            @is_recurring = hash['isRecurring']
          end
        end
      end
    end
  end
end
