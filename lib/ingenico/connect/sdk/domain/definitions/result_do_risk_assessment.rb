#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/retail_decisions_cc_fraud_check_output'
require 'ingenico/connect/sdk/domain/definitions/validation_bank_account_output'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [String] category
      # @attr [String] result
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::RetailDecisionsCCFraudCheckOutput] retaildecisions_cc_fraud_check_output
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::ValidationBankAccountOutput] validation_bank_account_output
      class ResultDoRiskAssessment < Ingenico::Connect::SDK::DataObject

        attr_accessor :category

        attr_accessor :result

        attr_accessor :retaildecisions_cc_fraud_check_output

        attr_accessor :validation_bank_account_output

        # @return (Hash)
        def to_h
          hash = super
          hash['category'] = @category unless @category.nil?
          hash['result'] = @result unless @result.nil?
          hash['retaildecisionsCCFraudCheckOutput'] = @retaildecisions_cc_fraud_check_output.to_h unless @retaildecisions_cc_fraud_check_output.nil?
          hash['validationBankAccountOutput'] = @validation_bank_account_output.to_h unless @validation_bank_account_output.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'category'
            @category = hash['category']
          end
          if hash.has_key? 'result'
            @result = hash['result']
          end
          if hash.has_key? 'retaildecisionsCCFraudCheckOutput'
            raise TypeError, "value '%s' is not a Hash" % [hash['retaildecisionsCCFraudCheckOutput']] unless hash['retaildecisionsCCFraudCheckOutput'].is_a? Hash
            @retaildecisions_cc_fraud_check_output = Ingenico::Connect::SDK::Domain::Definitions::RetailDecisionsCCFraudCheckOutput.new_from_hash(hash['retaildecisionsCCFraudCheckOutput'])
          end
          if hash.has_key? 'validationBankAccountOutput'
            raise TypeError, "value '%s' is not a Hash" % [hash['validationBankAccountOutput']] unless hash['validationBankAccountOutput'].is_a? Hash
            @validation_bank_account_output = Ingenico::Connect::SDK::Domain::Definitions::ValidationBankAccountOutput.new_from_hash(hash['validationBankAccountOutput'])
          end
        end
      end
    end
  end
end
