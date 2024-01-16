#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/definitions/bank_account'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Definitions
          # @attr [String] account_number
          # @attr [String] bank_code
          # @attr [String] bank_name
          # @attr [String] branch_code
          # @attr [String] check_digit
          # @attr [String] country_code
          class BankAccountBban < Ingenico::Connect::SDK::Domain::Definitions::BankAccount

            attr_accessor :account_number

            attr_accessor :bank_code

            attr_accessor :bank_name

            attr_accessor :branch_code

            attr_accessor :check_digit

            attr_accessor :country_code

            # @return (Hash)
            def to_h
              hash = super
              hash['accountNumber'] = @account_number unless @account_number.nil?
              hash['bankCode'] = @bank_code unless @bank_code.nil?
              hash['bankName'] = @bank_name unless @bank_name.nil?
              hash['branchCode'] = @branch_code unless @branch_code.nil?
              hash['checkDigit'] = @check_digit unless @check_digit.nil?
              hash['countryCode'] = @country_code unless @country_code.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'accountNumber'
                @account_number = hash['accountNumber']
              end
              if hash.has_key? 'bankCode'
                @bank_code = hash['bankCode']
              end
              if hash.has_key? 'bankName'
                @bank_name = hash['bankName']
              end
              if hash.has_key? 'branchCode'
                @branch_code = hash['branchCode']
              end
              if hash.has_key? 'checkDigit'
                @check_digit = hash['checkDigit']
              end
              if hash.has_key? 'countryCode'
                @country_code = hash['countryCode']
              end
            end
          end
        end
      end
    end
  end
end
