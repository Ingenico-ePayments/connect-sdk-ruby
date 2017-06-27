#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/bank_account'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class BankAccountIban < Ingenico::Connect::SDK::Domain::Definitions::BankAccount

        # String
        attr_accessor :iban

        def to_h
          hash = super
          add_to_hash(hash, 'iban', @iban)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('iban')
            @iban = hash['iban']
          end
        end
      end
    end
  end
end
