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

      class BankDetailsResponse < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban}
        attr_accessor :bank_account_bban

        # {Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban}
        attr_accessor :bank_account_iban

        # {Ingenico::Connect::SDK::Domain::Services::BankData}
        attr_accessor :bank_data

        # {Ingenico::Connect::SDK::Domain::Services::Swift}
        attr_accessor :swift

        def to_h
          hash = super
          add_to_hash(hash, 'bankAccountBban', @bank_account_bban)
          add_to_hash(hash, 'bankAccountIban', @bank_account_iban)
          add_to_hash(hash, 'bankData', @bank_data)
          add_to_hash(hash, 'swift', @swift)
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
          if hash.has_key?('bankData')
            if !(hash['bankData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['bankData']]
            end
            @bank_data = Ingenico::Connect::SDK::Domain::Services::BankData.new_from_hash(hash['bankData'])
          end
          if hash.has_key?('swift')
            if !(hash['swift'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['swift']]
            end
            @swift = Ingenico::Connect::SDK::Domain::Services::Swift.new_from_hash(hash['swift'])
          end
        end
      end
    end
  end
end
