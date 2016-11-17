#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/domain/definitions/bank_account'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_BankAccountBban BankAccountBban}
      class BankAccountBban < Ingenico::Connect::SDK::Domain::Definitions::BankAccount

        # String
        attr_accessor :account_number

        # String
        attr_accessor :bank_code

        # String
        attr_accessor :bank_name

        # String
        attr_accessor :branch_code

        # String
        attr_accessor :check_digit

        # String
        attr_accessor :country_code

        def to_h
          hash = super
          add_to_hash(hash, 'accountNumber', @account_number)
          add_to_hash(hash, 'bankCode', @bank_code)
          add_to_hash(hash, 'bankName', @bank_name)
          add_to_hash(hash, 'branchCode', @branch_code)
          add_to_hash(hash, 'checkDigit', @check_digit)
          add_to_hash(hash, 'countryCode', @country_code)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('accountNumber')
            @account_number = hash['accountNumber']
          end
          if hash.has_key?('bankCode')
            @bank_code = hash['bankCode']
          end
          if hash.has_key?('bankName')
            @bank_name = hash['bankName']
          end
          if hash.has_key?('branchCode')
            @branch_code = hash['branchCode']
          end
          if hash.has_key?('checkDigit')
            @check_digit = hash['checkDigit']
          end
          if hash.has_key?('countryCode')
            @country_code = hash['countryCode']
          end
        end
      end
    end
  end
end
