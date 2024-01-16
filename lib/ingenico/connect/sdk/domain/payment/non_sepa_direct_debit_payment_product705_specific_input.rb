#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/bank_account_bban'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] authorisation_id
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban] bank_account_bban
          # @attr [String] transaction_type
          class NonSepaDirectDebitPaymentProduct705SpecificInput < Ingenico::Connect::SDK::DataObject

            attr_accessor :authorisation_id

            attr_accessor :bank_account_bban

            attr_accessor :transaction_type

            # @return (Hash)
            def to_h
              hash = super
              hash['authorisationId'] = @authorisation_id unless @authorisation_id.nil?
              hash['bankAccountBban'] = @bank_account_bban.to_h unless @bank_account_bban.nil?
              hash['transactionType'] = @transaction_type unless @transaction_type.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'authorisationId'
                @authorisation_id = hash['authorisationId']
              end
              if hash.has_key? 'bankAccountBban'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountBban']] unless hash['bankAccountBban'].is_a? Hash
                @bank_account_bban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban.new_from_hash(hash['bankAccountBban'])
              end
              if hash.has_key? 'transactionType'
                @transaction_type = hash['transactionType']
              end
            end
          end
        end
      end
    end
  end
end
