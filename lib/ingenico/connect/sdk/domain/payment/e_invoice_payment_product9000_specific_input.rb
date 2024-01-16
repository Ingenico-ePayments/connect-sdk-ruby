#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban] bank_account_iban
          # @attr [String] installment_id
          class EInvoicePaymentProduct9000SpecificInput < Ingenico::Connect::SDK::DataObject

            attr_accessor :bank_account_iban

            attr_accessor :installment_id

            # @return (Hash)
            def to_h
              hash = super
              hash['bankAccountIban'] = @bank_account_iban.to_h unless @bank_account_iban.nil?
              hash['installmentId'] = @installment_id unless @installment_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'bankAccountIban'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']] unless hash['bankAccountIban'].is_a? Hash
                @bank_account_iban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban.new_from_hash(hash['bankAccountIban'])
              end
              if hash.has_key? 'installmentId'
                @installment_id = hash['installmentId']
              end
            end
          end
        end
      end
    end
  end
end
