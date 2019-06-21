#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban] bank_account_iban
      class RedirectPaymentProduct816SpecificInput < Ingenico::Connect::SDK::DataObject

        attr_accessor :bank_account_iban

        # @return (Hash)
        def to_h
          hash = super
          hash['bankAccountIban'] = @bank_account_iban.to_h unless @bank_account_iban.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'bankAccountIban'
            raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']] unless hash['bankAccountIban'].is_a? Hash
            @bank_account_iban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban.new_from_hash(hash['bankAccountIban'])
          end
        end
      end
    end
  end
end
