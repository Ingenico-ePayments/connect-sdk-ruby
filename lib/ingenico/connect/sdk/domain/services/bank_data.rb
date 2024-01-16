#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Services
          # @attr [String] new_bank_name
          # @attr [String] reformatted_account_number
          # @attr [String] reformatted_bank_code
          # @attr [String] reformatted_branch_code
          class BankData < Ingenico::Connect::SDK::DataObject

            attr_accessor :new_bank_name

            attr_accessor :reformatted_account_number

            attr_accessor :reformatted_bank_code

            attr_accessor :reformatted_branch_code

            # @return (Hash)
            def to_h
              hash = super
              hash['newBankName'] = @new_bank_name unless @new_bank_name.nil?
              hash['reformattedAccountNumber'] = @reformatted_account_number unless @reformatted_account_number.nil?
              hash['reformattedBankCode'] = @reformatted_bank_code unless @reformatted_bank_code.nil?
              hash['reformattedBranchCode'] = @reformatted_branch_code unless @reformatted_branch_code.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'newBankName'
                @new_bank_name = hash['newBankName']
              end
              if hash.has_key? 'reformattedAccountNumber'
                @reformatted_account_number = hash['reformattedAccountNumber']
              end
              if hash.has_key? 'reformattedBankCode'
                @reformatted_bank_code = hash['reformattedBankCode']
              end
              if hash.has_key? 'reformattedBranchCode'
                @reformatted_branch_code = hash['reformattedBranchCode']
              end
            end
          end
        end
      end
    end
  end
end
