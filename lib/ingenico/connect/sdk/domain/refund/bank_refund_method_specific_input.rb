#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/refund/bank_account_bban_refund'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Refund
          # @attr [Ingenico::Connect::SDK::Domain::Refund::BankAccountBbanRefund] bank_account_bban
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban] bank_account_iban
          # @attr [String] country_code
          class BankRefundMethodSpecificInput < Ingenico::Connect::SDK::DataObject

            attr_accessor :bank_account_bban

            attr_accessor :bank_account_iban

            attr_accessor :country_code

            # @return (Hash)
            def to_h
              hash = super
              hash['bankAccountBban'] = @bank_account_bban.to_h unless @bank_account_bban.nil?
              hash['bankAccountIban'] = @bank_account_iban.to_h unless @bank_account_iban.nil?
              hash['countryCode'] = @country_code unless @country_code.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'bankAccountBban'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountBban']] unless hash['bankAccountBban'].is_a? Hash
                @bank_account_bban = Ingenico::Connect::SDK::Domain::Refund::BankAccountBbanRefund.new_from_hash(hash['bankAccountBban'])
              end
              if hash.has_key? 'bankAccountIban'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']] unless hash['bankAccountIban'].is_a? Hash
                @bank_account_iban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban.new_from_hash(hash['bankAccountIban'])
              end
              if hash.has_key? 'countryCode'
                @country_code = hash['countryCode']
              end
            end
          end
        end
      end
    end
  end
end
