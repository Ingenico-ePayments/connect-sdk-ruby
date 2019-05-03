#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/definitions/bank_account_bban'
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/payout/bank_transfer_payout_method_specific_input'
require 'ingenico/connect/sdk/domain/payout/card_payout_method_specific_input'
require 'ingenico/connect/sdk/domain/payout/payout_customer'
require 'ingenico/connect/sdk/domain/payout/payout_references'

module Ingenico::Connect::SDK
  module Domain
    module Payout

      class CreatePayoutRequest < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney}
        attr_accessor :amount_of_money

        # {Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban}
        #
        # Deprecated; Moved to BankTransferPayoutMethodSpecificInput
        attr_accessor :bank_account_bban

        # {Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban}
        #
        # Deprecated; Moved to BankTransferPayoutMethodSpecificInput
        attr_accessor :bank_account_iban

        # {Ingenico::Connect::SDK::Domain::Payout::BankTransferPayoutMethodSpecificInput}
        attr_accessor :bank_transfer_payout_method_specific_input

        # {Ingenico::Connect::SDK::Domain::Payout::CardPayoutMethodSpecificInput}
        attr_accessor :card_payout_method_specific_input

        # {Ingenico::Connect::SDK::Domain::Payout::PayoutCustomer}
        #
        # Deprecated; Moved to BankTransferPayoutMethodSpecificInput
        attr_accessor :customer

        # String
        #
        # Deprecated; Moved to BankTransferPayoutMethodSpecificInput
        attr_accessor :payout_date

        # String
        #
        # Deprecated; Moved to BankTransferPayoutMethodSpecificInput
        attr_accessor :payout_text

        # {Ingenico::Connect::SDK::Domain::Payout::PayoutReferences}
        attr_accessor :references

        # String
        #
        # Deprecated; Moved to BankTransferPayoutMethodSpecificInput
        attr_accessor :swift_code

        def to_h
          hash = super
          add_to_hash(hash, 'amountOfMoney', @amount_of_money)
          add_to_hash(hash, 'bankAccountBban', @bank_account_bban)
          add_to_hash(hash, 'bankAccountIban', @bank_account_iban)
          add_to_hash(hash, 'bankTransferPayoutMethodSpecificInput', @bank_transfer_payout_method_specific_input)
          add_to_hash(hash, 'cardPayoutMethodSpecificInput', @card_payout_method_specific_input)
          add_to_hash(hash, 'customer', @customer)
          add_to_hash(hash, 'payoutDate', @payout_date)
          add_to_hash(hash, 'payoutText', @payout_text)
          add_to_hash(hash, 'references', @references)
          add_to_hash(hash, 'swiftCode', @swift_code)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('amountOfMoney')
            if !(hash['amountOfMoney'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']]
            end
            @amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
          end
          if hash.has_key?('bankAccountBban')
            if !(hash['bankAccountBban'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountBban']]
            end
            @bank_account_bban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban.new_from_hash(hash['bankAccountBban'])
          end
          if hash.has_key?('bankAccountIban')
            if !(hash['bankAccountIban'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']]
            end
            @bank_account_iban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban.new_from_hash(hash['bankAccountIban'])
          end
          if hash.has_key?('bankTransferPayoutMethodSpecificInput')
            if !(hash['bankTransferPayoutMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['bankTransferPayoutMethodSpecificInput']]
            end
            @bank_transfer_payout_method_specific_input = Ingenico::Connect::SDK::Domain::Payout::BankTransferPayoutMethodSpecificInput.new_from_hash(hash['bankTransferPayoutMethodSpecificInput'])
          end
          if hash.has_key?('cardPayoutMethodSpecificInput')
            if !(hash['cardPayoutMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['cardPayoutMethodSpecificInput']]
            end
            @card_payout_method_specific_input = Ingenico::Connect::SDK::Domain::Payout::CardPayoutMethodSpecificInput.new_from_hash(hash['cardPayoutMethodSpecificInput'])
          end
          if hash.has_key?('customer')
            if !(hash['customer'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['customer']]
            end
            @customer = Ingenico::Connect::SDK::Domain::Payout::PayoutCustomer.new_from_hash(hash['customer'])
          end
          if hash.has_key?('payoutDate')
            @payout_date = hash['payoutDate']
          end
          if hash.has_key?('payoutText')
            @payout_text = hash['payoutText']
          end
          if hash.has_key?('references')
            if !(hash['references'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['references']]
            end
            @references = Ingenico::Connect::SDK::Domain::Payout::PayoutReferences.new_from_hash(hash['references'])
          end
          if hash.has_key?('swiftCode')
            @swift_code = hash['swiftCode']
          end
        end
      end
    end
  end
end
