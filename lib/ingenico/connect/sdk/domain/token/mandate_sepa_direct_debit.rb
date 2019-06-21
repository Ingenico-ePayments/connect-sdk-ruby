#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/token/creditor'
require 'ingenico/connect/sdk/domain/token/mandate_sepa_direct_debit_with_mandate_id'

module Ingenico::Connect::SDK
  module Domain
    module Token

      # @attr [Ingenico::Connect::SDK::Domain::Token::Creditor] creditor
      class MandateSepaDirectDebit < Ingenico::Connect::SDK::Domain::Token::MandateSepaDirectDebitWithMandateId

        attr_accessor :creditor

        # @return (Hash)
        def to_h
          hash = super
          hash['creditor'] = @creditor.to_h unless @creditor.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'creditor'
            raise TypeError, "value '%s' is not a Hash" % [hash['creditor']] unless hash['creditor'].is_a? Hash
            @creditor = Ingenico::Connect::SDK::Domain::Token::Creditor.new_from_hash(hash['creditor'])
          end
        end
      end
    end
  end
end
