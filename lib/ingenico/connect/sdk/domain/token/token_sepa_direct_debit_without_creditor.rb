#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/token/abstract_token'
require 'ingenico/connect/sdk/domain/token/customer_token_with_contact_details'
require 'ingenico/connect/sdk/domain/token/mandate_sepa_direct_debit_without_creditor'

module Ingenico::Connect::SDK
  module Domain
    module Token

      # @attr [Ingenico::Connect::SDK::Domain::Token::CustomerTokenWithContactDetails] customer
      # @attr [Ingenico::Connect::SDK::Domain::Token::MandateSepaDirectDebitWithoutCreditor] mandate
      class TokenSepaDirectDebitWithoutCreditor < Ingenico::Connect::SDK::Domain::Token::AbstractToken

        attr_accessor :customer

        attr_accessor :mandate

        # @return (Hash)
        def to_h
          hash = super
          hash['customer'] = @customer.to_h unless @customer.nil?
          hash['mandate'] = @mandate.to_h unless @mandate.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'customer'
            raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
            @customer = Ingenico::Connect::SDK::Domain::Token::CustomerTokenWithContactDetails.new_from_hash(hash['customer'])
          end
          if hash.has_key? 'mandate'
            raise TypeError, "value '%s' is not a Hash" % [hash['mandate']] unless hash['mandate'].is_a? Hash
            @mandate = Ingenico::Connect::SDK::Domain::Token::MandateSepaDirectDebitWithoutCreditor.new_from_hash(hash['mandate'])
          end
        end
      end
    end
  end
end
