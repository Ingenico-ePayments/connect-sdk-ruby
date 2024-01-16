#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/token/mandate_sepa_direct_debit_without_creditor'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Token
          # @attr [String] mandate_id
          class MandateSepaDirectDebitWithMandateId < Ingenico::Connect::SDK::Domain::Token::MandateSepaDirectDebitWithoutCreditor

            attr_accessor :mandate_id

            # @return (Hash)
            def to_h
              hash = super
              hash['mandateId'] = @mandate_id unless @mandate_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'mandateId'
                @mandate_id = hash['mandateId']
              end
            end
          end
        end
      end
    end
  end
end
