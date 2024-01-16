#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/definitions/bank_account_bban'
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/riskassessments/risk_assessment'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Riskassessments
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban] bank_account_bban
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban] bank_account_iban
          class RiskAssessmentBankAccount < Ingenico::Connect::SDK::Domain::Riskassessments::RiskAssessment

            attr_accessor :bank_account_bban

            attr_accessor :bank_account_iban

            # @return (Hash)
            def to_h
              hash = super
              hash['bankAccountBban'] = @bank_account_bban.to_h unless @bank_account_bban.nil?
              hash['bankAccountIban'] = @bank_account_iban.to_h unless @bank_account_iban.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'bankAccountBban'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountBban']] unless hash['bankAccountBban'].is_a? Hash
                @bank_account_bban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban.new_from_hash(hash['bankAccountBban'])
              end
              if hash.has_key? 'bankAccountIban'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']] unless hash['bankAccountIban'].is_a? Hash
                @bank_account_iban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban.new_from_hash(hash['bankAccountIban'])
              end
            end
          end
        end
      end
    end
  end
end
