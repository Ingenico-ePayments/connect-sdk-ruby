#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/token/debtor'
require 'ingenico/connect/sdk/domain/token/mandate_approval'

module Ingenico::Connect::SDK
  module Domain
    module Token

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban] bank_account_iban
      # @attr [String] customer_contract_identifier
      # @attr [Ingenico::Connect::SDK::Domain::Token::Debtor] debtor
      # @attr [true/false] is_recurring
      # @attr [Ingenico::Connect::SDK::Domain::Token::MandateApproval] mandate_approval
      # @attr [String] pre_notification
      class MandateSepaDirectDebitWithoutCreditor < Ingenico::Connect::SDK::DataObject

        attr_accessor :bank_account_iban

        attr_accessor :customer_contract_identifier

        attr_accessor :debtor

        attr_accessor :is_recurring

        attr_accessor :mandate_approval

        attr_accessor :pre_notification

        # @return (Hash)
        def to_h
          hash = super
          hash['bankAccountIban'] = @bank_account_iban.to_h unless @bank_account_iban.nil?
          hash['customerContractIdentifier'] = @customer_contract_identifier unless @customer_contract_identifier.nil?
          hash['debtor'] = @debtor.to_h unless @debtor.nil?
          hash['isRecurring'] = @is_recurring unless @is_recurring.nil?
          hash['mandateApproval'] = @mandate_approval.to_h unless @mandate_approval.nil?
          hash['preNotification'] = @pre_notification unless @pre_notification.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'bankAccountIban'
            raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']] unless hash['bankAccountIban'].is_a? Hash
            @bank_account_iban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban.new_from_hash(hash['bankAccountIban'])
          end
          if hash.has_key? 'customerContractIdentifier'
            @customer_contract_identifier = hash['customerContractIdentifier']
          end
          if hash.has_key? 'debtor'
            raise TypeError, "value '%s' is not a Hash" % [hash['debtor']] unless hash['debtor'].is_a? Hash
            @debtor = Ingenico::Connect::SDK::Domain::Token::Debtor.new_from_hash(hash['debtor'])
          end
          if hash.has_key? 'isRecurring'
            @is_recurring = hash['isRecurring']
          end
          if hash.has_key? 'mandateApproval'
            raise TypeError, "value '%s' is not a Hash" % [hash['mandateApproval']] unless hash['mandateApproval'].is_a? Hash
            @mandate_approval = Ingenico::Connect::SDK::Domain::Token::MandateApproval.new_from_hash(hash['mandateApproval'])
          end
          if hash.has_key? 'preNotification'
            @pre_notification = hash['preNotification']
          end
        end
      end
    end
  end
end
