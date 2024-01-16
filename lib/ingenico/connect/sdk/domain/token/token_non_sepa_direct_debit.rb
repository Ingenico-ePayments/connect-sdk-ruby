#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/token/abstract_token'
require 'ingenico/connect/sdk/domain/token/customer_token'
require 'ingenico/connect/sdk/domain/token/mandate_non_sepa_direct_debit'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Token
          # @attr [Ingenico::Connect::SDK::Domain::Token::CustomerToken] customer
          # @attr [Ingenico::Connect::SDK::Domain::Token::MandateNonSepaDirectDebit] mandate
          class TokenNonSepaDirectDebit < Ingenico::Connect::SDK::Domain::Token::AbstractToken

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
                @customer = Ingenico::Connect::SDK::Domain::Token::CustomerToken.new_from_hash(hash['customer'])
              end
              if hash.has_key? 'mandate'
                raise TypeError, "value '%s' is not a Hash" % [hash['mandate']] unless hash['mandate'].is_a? Hash
                @mandate = Ingenico::Connect::SDK::Domain::Token::MandateNonSepaDirectDebit.new_from_hash(hash['mandate'])
              end
            end
          end
        end
      end
    end
  end
end
