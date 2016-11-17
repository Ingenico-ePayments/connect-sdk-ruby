#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/token/debtor'
require 'ingenico/connect/sdk/domain/token/mandate_approval'

module Ingenico::Connect::SDK
  module Domain
    module Token

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_MandateSepaDirectDebitWithoutCreditor MandateSepaDirectDebitWithoutCreditor}
      class MandateSepaDirectDebitWithoutCreditor < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban}
        attr_accessor :bank_account_iban

        # String
        attr_accessor :customer_contract_identifier

        # {Ingenico::Connect::SDK::Domain::Token::Debtor}
        attr_accessor :debtor

        # true/false
        attr_accessor :is_recurring

        # {Ingenico::Connect::SDK::Domain::Token::MandateApproval}
        attr_accessor :mandate_approval

        # String
        attr_accessor :pre_notification

        def to_h
          hash = super
          add_to_hash(hash, 'bankAccountIban', @bank_account_iban)
          add_to_hash(hash, 'customerContractIdentifier', @customer_contract_identifier)
          add_to_hash(hash, 'debtor', @debtor)
          add_to_hash(hash, 'isRecurring', @is_recurring)
          add_to_hash(hash, 'mandateApproval', @mandate_approval)
          add_to_hash(hash, 'preNotification', @pre_notification)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('bankAccountIban')
            if !(hash['bankAccountIban'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']]
            end
            @bank_account_iban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban.new_from_hash(hash['bankAccountIban'])
          end
          if hash.has_key?('customerContractIdentifier')
            @customer_contract_identifier = hash['customerContractIdentifier']
          end
          if hash.has_key?('debtor')
            if !(hash['debtor'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['debtor']]
            end
            @debtor = Ingenico::Connect::SDK::Domain::Token::Debtor.new_from_hash(hash['debtor'])
          end
          if hash.has_key?('isRecurring')
            @is_recurring = hash['isRecurring']
          end
          if hash.has_key?('mandateApproval')
            if !(hash['mandateApproval'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['mandateApproval']]
            end
            @mandate_approval = Ingenico::Connect::SDK::Domain::Token::MandateApproval.new_from_hash(hash['mandateApproval'])
          end
          if hash.has_key?('preNotification')
            @pre_notification = hash['preNotification']
          end
        end
      end
    end
  end
end
