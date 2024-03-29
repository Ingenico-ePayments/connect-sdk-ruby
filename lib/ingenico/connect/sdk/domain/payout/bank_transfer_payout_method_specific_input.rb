#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/definitions/bank_account_bban'
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/payout/abstract_payout_method_specific_input'
require 'ingenico/connect/sdk/domain/payout/payout_customer'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payout
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban] bank_account_bban
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban] bank_account_iban
          # @attr [Ingenico::Connect::SDK::Domain::Payout::PayoutCustomer] customer
          # @attr [String] payout_date
          # @attr [String] payout_text
          # @attr [String] swift_code
          class BankTransferPayoutMethodSpecificInput < Ingenico::Connect::SDK::Domain::Payout::AbstractPayoutMethodSpecificInput

            attr_accessor :bank_account_bban

            attr_accessor :bank_account_iban

            #
            # @deprecated Moved to PayoutDetails
            attr_accessor :customer

            attr_accessor :payout_date

            attr_accessor :payout_text

            attr_accessor :swift_code

            # @return (Hash)
            def to_h
              hash = super
              hash['bankAccountBban'] = @bank_account_bban.to_h unless @bank_account_bban.nil?
              hash['bankAccountIban'] = @bank_account_iban.to_h unless @bank_account_iban.nil?
              hash['customer'] = @customer.to_h unless @customer.nil?
              hash['payoutDate'] = @payout_date unless @payout_date.nil?
              hash['payoutText'] = @payout_text unless @payout_text.nil?
              hash['swiftCode'] = @swift_code unless @swift_code.nil?
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
              if hash.has_key? 'swiftCode'
                @swift_code = hash['swiftCode']
              end
            end
          end
        end
      end
    end
  end
end
