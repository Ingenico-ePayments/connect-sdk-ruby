#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/bank_account_bban'

module Ingenico::Connect::SDK
  module Domain
    module Refund

      class BankAccountBbanRefund < Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban

        # String
        attr_accessor :bank_city

        # String
        attr_accessor :swift_code

        def to_h
          hash = super
          add_to_hash(hash, 'bankCity', @bank_city)
          add_to_hash(hash, 'swiftCode', @swift_code)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('bankCity')
            @bank_city = hash['bankCity']
          end
          if hash.has_key?('swiftCode')
            @swift_code = hash['swiftCode']
          end
        end
      end
    end
  end
end
