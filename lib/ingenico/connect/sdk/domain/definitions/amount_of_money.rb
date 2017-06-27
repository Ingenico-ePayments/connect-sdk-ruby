#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class AmountOfMoney < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :amount

        # String
        attr_accessor :currency_code

        def to_h
          hash = super
          add_to_hash(hash, 'amount', @amount)
          add_to_hash(hash, 'currencyCode', @currency_code)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('amount')
            @amount = hash['amount']
          end
          if hash.has_key?('currencyCode')
            @currency_code = hash['currencyCode']
          end
        end
      end
    end
  end
end
