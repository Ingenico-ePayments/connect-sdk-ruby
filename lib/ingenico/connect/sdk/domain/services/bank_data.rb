#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Services

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_BankData BankData}
      class BankData < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :new_bank_name

        # String
        attr_accessor :reformatted_account_number

        # String
        attr_accessor :reformatted_bank_code

        # String
        attr_accessor :reformatted_branch_code

        def to_h
          hash = super
          add_to_hash(hash, 'newBankName', @new_bank_name)
          add_to_hash(hash, 'reformattedAccountNumber', @reformatted_account_number)
          add_to_hash(hash, 'reformattedBankCode', @reformatted_bank_code)
          add_to_hash(hash, 'reformattedBranchCode', @reformatted_branch_code)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('newBankName')
            @new_bank_name = hash['newBankName']
          end
          if hash.has_key?('reformattedAccountNumber')
            @reformatted_account_number = hash['reformattedAccountNumber']
          end
          if hash.has_key?('reformattedBankCode')
            @reformatted_bank_code = hash['reformattedBankCode']
          end
          if hash.has_key?('reformattedBranchCode')
            @reformatted_branch_code = hash['reformattedBranchCode']
          end
        end
      end
    end
  end
end
