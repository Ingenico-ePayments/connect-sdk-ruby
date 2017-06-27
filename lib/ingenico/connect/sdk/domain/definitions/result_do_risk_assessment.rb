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

      class ResultDoRiskAssessment < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :category

        # String
        attr_accessor :result

        # {Ingenico::Connect::SDK::Domain::Definitions::RetailDecisionsCCFraudCheckOutput}
        attr_accessor :retaildecisions_cc_fraud_check_output

        # {Ingenico::Connect::SDK::Domain::Definitions::ValidationBankAccountOutput}
        attr_accessor :validation_bank_account_output

        def to_h
          hash = super
          add_to_hash(hash, 'category', @category)
          add_to_hash(hash, 'result', @result)
          add_to_hash(hash, 'retaildecisionsCCFraudCheckOutput', @retaildecisions_cc_fraud_check_output)
          add_to_hash(hash, 'validationBankAccountOutput', @validation_bank_account_output)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('category')
            @category = hash['category']
          end
          if hash.has_key?('result')
            @result = hash['result']
          end
          if hash.has_key?('retaildecisionsCCFraudCheckOutput')
            if !(hash['retaildecisionsCCFraudCheckOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['retaildecisionsCCFraudCheckOutput']]
            end
            @retaildecisions_cc_fraud_check_output = Ingenico::Connect::SDK::Domain::Definitions::RetailDecisionsCCFraudCheckOutput.new_from_hash(hash['retaildecisionsCCFraudCheckOutput'])
          end
          if hash.has_key?('validationBankAccountOutput')
            if !(hash['validationBankAccountOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['validationBankAccountOutput']]
            end
            @validation_bank_account_output = Ingenico::Connect::SDK::Domain::Definitions::ValidationBankAccountOutput.new_from_hash(hash['validationBankAccountOutput'])
          end
        end
      end
    end
  end
end
