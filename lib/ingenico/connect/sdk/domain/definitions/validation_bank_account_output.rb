#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/validation_bank_account_check'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [Array<Ingenico::Connect::SDK::Domain::Definitions::ValidationBankAccountCheck>] checks
      # @attr [String] new_bank_name
      # @attr [String] reformatted_account_number
      # @attr [String] reformatted_bank_code
      # @attr [String] reformatted_branch_code
      class ValidationBankAccountOutput < Ingenico::Connect::SDK::DataObject

        attr_accessor :checks

        attr_accessor :new_bank_name

        attr_accessor :reformatted_account_number

        attr_accessor :reformatted_bank_code

        attr_accessor :reformatted_branch_code

        # @return (Hash)
        def to_h
          hash = super
          hash['checks'] = @checks.collect{|val| val.to_h} unless @checks.nil?
          hash['newBankName'] = @new_bank_name unless @new_bank_name.nil?
          hash['reformattedAccountNumber'] = @reformatted_account_number unless @reformatted_account_number.nil?
          hash['reformattedBankCode'] = @reformatted_bank_code unless @reformatted_bank_code.nil?
          hash['reformattedBranchCode'] = @reformatted_branch_code unless @reformatted_branch_code.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'checks'
            raise TypeError, "value '%s' is not an Array" % [hash['checks']] unless hash['checks'].is_a? Array
            @checks = []
            hash['checks'].each do |e|
              @checks << Ingenico::Connect::SDK::Domain::Definitions::ValidationBankAccountCheck.new_from_hash(e)
            end
          end
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
