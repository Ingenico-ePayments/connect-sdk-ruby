#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/bank_account_bban'
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/services/bank_data'
require 'ingenico/connect/sdk/domain/services/swift'

module Ingenico::Connect::SDK
  module Domain
    module Services

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban] bank_account_bban
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban] bank_account_iban
      # @attr [Ingenico::Connect::SDK::Domain::Services::BankData] bank_data
      # @attr [Ingenico::Connect::SDK::Domain::Services::Swift] swift
      class BankDetailsResponse < Ingenico::Connect::SDK::DataObject

        attr_accessor :bank_account_bban

        attr_accessor :bank_account_iban

        attr_accessor :bank_data

        attr_accessor :swift

        # @return (Hash)
        def to_h
          hash = super
          hash['bankAccountBban'] = @bank_account_bban.to_h unless @bank_account_bban.nil?
          hash['bankAccountIban'] = @bank_account_iban.to_h unless @bank_account_iban.nil?
          hash['bankData'] = @bank_data.to_h unless @bank_data.nil?
          hash['swift'] = @swift.to_h unless @swift.nil?
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
          if hash.has_key? 'bankData'
            raise TypeError, "value '%s' is not a Hash" % [hash['bankData']] unless hash['bankData'].is_a? Hash
            @bank_data = Ingenico::Connect::SDK::Domain::Services::BankData.new_from_hash(hash['bankData'])
          end
          if hash.has_key? 'swift'
            raise TypeError, "value '%s' is not a Hash" % [hash['swift']] unless hash['swift'].is_a? Hash
            @swift = Ingenico::Connect::SDK::Domain::Services::Swift.new_from_hash(hash['swift'])
          end
        end
      end
    end
  end
end
