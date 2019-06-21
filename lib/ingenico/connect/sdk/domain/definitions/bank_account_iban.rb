#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/bank_account'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [String] iban
      class BankAccountIban < Ingenico::Connect::SDK::Domain::Definitions::BankAccount

        attr_accessor :iban

        # @return (Hash)
        def to_h
          hash = super
          hash['iban'] = @iban unless @iban.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'iban'
            @iban = hash['iban']
          end
        end
      end
    end
  end
end
