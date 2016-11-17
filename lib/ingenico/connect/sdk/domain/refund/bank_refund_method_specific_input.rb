#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/refund/bank_account_bban_refund'

module Ingenico::Connect::SDK
  module Domain
    module Refund

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_BankRefundMethodSpecificInput BankRefundMethodSpecificInput}
      class BankRefundMethodSpecificInput < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Refund::BankAccountBbanRefund}
        attr_accessor :bank_account_bban

        # {Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban}
        attr_accessor :bank_account_iban

        # String
        attr_accessor :country_code

        def to_h
          hash = super
          add_to_hash(hash, 'bankAccountBban', @bank_account_bban)
          add_to_hash(hash, 'bankAccountIban', @bank_account_iban)
          add_to_hash(hash, 'countryCode', @country_code)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('bankAccountBban')
            if !(hash['bankAccountBban'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountBban']]
            end
            @bank_account_bban = Ingenico::Connect::SDK::Domain::Refund::BankAccountBbanRefund.new_from_hash(hash['bankAccountBban'])
          end
          if hash.has_key?('bankAccountIban')
            if !(hash['bankAccountIban'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']]
            end
            @bank_account_iban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban.new_from_hash(hash['bankAccountIban'])
          end
          if hash.has_key?('countryCode')
            @country_code = hash['countryCode']
          end
        end
      end
    end
  end
end
