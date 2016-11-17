#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/domain/token/creditor'
require 'ingenico/connect/sdk/domain/token/mandate_sepa_direct_debit_with_mandate_id'

module Ingenico::Connect::SDK
  module Domain
    module Token

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_MandateSepaDirectDebit MandateSepaDirectDebit}
      class MandateSepaDirectDebit < Ingenico::Connect::SDK::Domain::Token::MandateSepaDirectDebitWithMandateId

        # {Ingenico::Connect::SDK::Domain::Token::Creditor}
        attr_accessor :creditor

        def to_h
          hash = super
          add_to_hash(hash, 'creditor', @creditor)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('creditor')
            if !(hash['creditor'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['creditor']]
            end
            @creditor = Ingenico::Connect::SDK::Domain::Token::Creditor.new_from_hash(hash['creditor'])
          end
        end
      end
    end
  end
end
