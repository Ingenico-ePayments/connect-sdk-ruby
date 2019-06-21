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

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney] amount_of_money
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban] bank_account_bban
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban] bank_account_iban
      # @attr [Ingenico::Connect::SDK::Domain::Payout::BankTransferPayoutMethodSpecificInput] bank_transfer_payout_method_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Payout::CardPayoutMethodSpecificInput] card_payout_method_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Payout::PayoutCustomer] customer
      # @attr [String] payout_date
      # @attr [String] payout_text
      # @attr [Ingenico::Connect::SDK::Domain::Payout::PayoutReferences] references
      # @attr [String] swift_code
      class CreatePayoutRequest < Ingenico::Connect::SDK::DataObject

        attr_accessor :amount_of_money

        #
        # @deprecated Moved to BankTransferPayoutMethodSpecificInput
        attr_accessor :bank_account_bban

        #
        # @deprecated Moved to BankTransferPayoutMethodSpecificInput
        attr_accessor :bank_account_iban

        attr_accessor :bank_transfer_payout_method_specific_input

        attr_accessor :card_payout_method_specific_input

        #
        # @deprecated Moved to BankTransferPayoutMethodSpecificInput
        attr_accessor :customer

        #
        # @deprecated Moved to BankTransferPayoutMethodSpecificInput
        attr_accessor :payout_date

        #
        # @deprecated Moved to BankTransferPayoutMethodSpecificInput
        attr_accessor :payout_text

        attr_accessor :references

        #
        # @deprecated Moved to BankTransferPayoutMethodSpecificInput
        attr_accessor :swift_code

        # @return (Hash)
        def to_h
          hash = super
          hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
          hash['bankAccountBban'] = @bank_account_bban.to_h unless @bank_account_bban.nil?
          hash['bankAccountIban'] = @bank_account_iban.to_h unless @bank_account_iban.nil?
          hash['bankTransferPayoutMethodSpecificInput'] = @bank_transfer_payout_method_specific_input.to_h unless @bank_transfer_payout_method_specific_input.nil?
          hash['cardPayoutMethodSpecificInput'] = @card_payout_method_specific_input.to_h unless @card_payout_method_specific_input.nil?
          hash['customer'] = @customer.to_h unless @customer.nil?
          hash['payoutDate'] = @payout_date unless @payout_date.nil?
          hash['payoutText'] = @payout_text unless @payout_text.nil?
          hash['references'] = @references.to_h unless @references.nil?
          hash['swiftCode'] = @swift_code unless @swift_code.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'amountOfMoney'
            raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
            @amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
          end
          if hash.has_key? 'bankAccountBban'
            raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountBban']] unless hash['bankAccountBban'].is_a? Hash
            @bank_account_bban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban.new_from_hash(hash['bankAccountBban'])
          end
          if hash.has_key? 'bankAccountIban'
            raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']] unless hash['bankAccountIban'].is_a? Hash
            @bank_account_iban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban.new_from_hash(hash['bankAccountIban'])
          end
          if hash.has_key? 'bankTransferPayoutMethodSpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['bankTransferPayoutMethodSpecificInput']] unless hash['bankTransferPayoutMethodSpecificInput'].is_a? Hash
            @bank_transfer_payout_method_specific_input = Ingenico::Connect::SDK::Domain::Payout::BankTransferPayoutMethodSpecificInput.new_from_hash(hash['bankTransferPayoutMethodSpecificInput'])
          end
          if hash.has_key? 'cardPayoutMethodSpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['cardPayoutMethodSpecificInput']] unless hash['cardPayoutMethodSpecificInput'].is_a? Hash
            @card_payout_method_specific_input = Ingenico::Connect::SDK::Domain::Payout::CardPayoutMethodSpecificInput.new_from_hash(hash['cardPayoutMethodSpecificInput'])
          end
          if hash.has_key? 'customer'
            raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
            @customer = Ingenico::Connect::SDK::Domain::Payout::PayoutCustomer.new_from_hash(hash['customer'])
          end
          if hash.has_key? 'payoutDate'
            @payout_date = hash['payoutDate']
          end
          if hash.has_key? 'payoutText'
            @payout_text = hash['payoutText']
          end
          if hash.has_key? 'references'
            raise TypeError, "value '%s' is not a Hash" % [hash['references']] unless hash['references'].is_a? Hash
            @references = Ingenico::Connect::SDK::Domain::Payout::PayoutReferences.new_from_hash(hash['references'])
          end
          if hash.has_key? 'swiftCode'
            @swift_code = hash['swiftCode']
          end
        end
      end
    end
  end
end
