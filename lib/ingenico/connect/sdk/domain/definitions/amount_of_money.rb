#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [Integer] amount
      # @attr [String] currency_code
      class AmountOfMoney < Ingenico::Connect::SDK::DataObject

        attr_accessor :amount

        attr_accessor :currency_code

        # @return (Hash)
        def to_h
          hash = super
          hash['amount'] = @amount unless @amount.nil?
          hash['currencyCode'] = @currency_code unless @currency_code.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'amount'
            @amount = hash['amount']
          end
          if hash.has_key? 'currencyCode'
            @currency_code = hash['currencyCode']
          end
        end
      end
    end
  end
end
