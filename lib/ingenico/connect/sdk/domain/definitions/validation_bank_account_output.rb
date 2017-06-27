#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/validation_bank_account_check'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class ValidationBankAccountOutput < Ingenico::Connect::SDK::DataObject

        # Array of {Ingenico::Connect::SDK::Domain::Definitions::ValidationBankAccountCheck}
        attr_accessor :checks

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
          add_to_hash(hash, 'checks', @checks)
          add_to_hash(hash, 'newBankName', @new_bank_name)
          add_to_hash(hash, 'reformattedAccountNumber', @reformatted_account_number)
          add_to_hash(hash, 'reformattedBankCode', @reformatted_bank_code)
          add_to_hash(hash, 'reformattedBranchCode', @reformatted_branch_code)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('checks')
            if !(hash['checks'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['checks']]
            end
            @checks = []
            hash['checks'].each do |e|
              @checks << Ingenico::Connect::SDK::Domain::Definitions::ValidationBankAccountCheck.new_from_hash(e)
            end
          end
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
