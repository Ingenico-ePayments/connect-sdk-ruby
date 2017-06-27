#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/token/mandate_sepa_direct_debit_without_creditor'

module Ingenico::Connect::SDK
  module Domain
    module Token

      class MandateSepaDirectDebitWithMandateId < Ingenico::Connect::SDK::Domain::Token::MandateSepaDirectDebitWithoutCreditor

        # String
        attr_accessor :mandate_id

        def to_h
          hash = super
          add_to_hash(hash, 'mandateId', @mandate_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('mandateId')
            @mandate_id = hash['mandateId']
          end
        end
      end
    end
  end
end
