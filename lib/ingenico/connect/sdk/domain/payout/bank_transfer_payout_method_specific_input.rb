#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/bank_account_bban'
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/payout/abstract_payout_method_specific_input'
require 'ingenico/connect/sdk/domain/payout/payout_customer'

module Ingenico::Connect::SDK
  module Domain
    module Payout

      class BankTransferPayoutMethodSpecificInput < Ingenico::Connect::SDK::Domain::Payout::AbstractPayoutMethodSpecificInput

        # {Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban}
        attr_accessor :bank_account_bban

        # {Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban}
        attr_accessor :bank_account_iban

        # {Ingenico::Connect::SDK::Domain::Payout::PayoutCustomer}
        attr_accessor :customer

        # String
        attr_accessor :payout_date

        # String
        attr_accessor :payout_text

        # String
        attr_accessor :swift_code

        def to_h
          hash = super
          add_to_hash(hash, 'bankAccountBban', @bank_account_bban)
          add_to_hash(hash, 'bankAccountIban', @bank_account_iban)
          add_to_hash(hash, 'customer', @customer)
          add_to_hash(hash, 'payoutDate', @payout_date)
          add_to_hash(hash, 'payoutText', @payout_text)
          add_to_hash(hash, 'swiftCode', @swift_code)
          hash
        end

        def from_hash(hash)
          super
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
          if hash.has_key?('swiftCode')
            @swift_code = hash['swiftCode']
          end
        end
      end
    end
  end
end
