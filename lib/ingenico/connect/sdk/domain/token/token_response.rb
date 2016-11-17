#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/token/token_card'
require 'ingenico/connect/sdk/domain/token/token_e_wallet'
require 'ingenico/connect/sdk/domain/token/token_non_sepa_direct_debit'
require 'ingenico/connect/sdk/domain/token/token_sepa_direct_debit'

module Ingenico::Connect::SDK
  module Domain
    module Token

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_TokenResponse TokenResponse}
      class TokenResponse < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Token::TokenCard}
        attr_accessor :card

        # {Ingenico::Connect::SDK::Domain::Token::TokenEWallet}
        attr_accessor :e_wallet

        # String
        attr_accessor :id

        # {Ingenico::Connect::SDK::Domain::Token::TokenNonSepaDirectDebit}
        attr_accessor :non_sepa_direct_debit

        # Integer
        attr_accessor :payment_product_id

        # {Ingenico::Connect::SDK::Domain::Token::TokenSepaDirectDebit}
        attr_accessor :sepa_direct_debit

        def to_h
          hash = super
          add_to_hash(hash, 'card', @card)
          add_to_hash(hash, 'eWallet', @e_wallet)
          add_to_hash(hash, 'id', @id)
          add_to_hash(hash, 'nonSepaDirectDebit', @non_sepa_direct_debit)
          add_to_hash(hash, 'paymentProductId', @payment_product_id)
          add_to_hash(hash, 'sepaDirectDebit', @sepa_direct_debit)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('card')
            if !(hash['card'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['card']]
            end
            @card = Ingenico::Connect::SDK::Domain::Token::TokenCard.new_from_hash(hash['card'])
          end
          if hash.has_key?('eWallet')
            if !(hash['eWallet'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['eWallet']]
            end
            @e_wallet = Ingenico::Connect::SDK::Domain::Token::TokenEWallet.new_from_hash(hash['eWallet'])
          end
          if hash.has_key?('id')
            @id = hash['id']
          end
          if hash.has_key?('nonSepaDirectDebit')
            if !(hash['nonSepaDirectDebit'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['nonSepaDirectDebit']]
            end
            @non_sepa_direct_debit = Ingenico::Connect::SDK::Domain::Token::TokenNonSepaDirectDebit.new_from_hash(hash['nonSepaDirectDebit'])
          end
          if hash.has_key?('paymentProductId')
            @payment_product_id = hash['paymentProductId']
          end
          if hash.has_key?('sepaDirectDebit')
            if !(hash['sepaDirectDebit'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['sepaDirectDebit']]
            end
            @sepa_direct_debit = Ingenico::Connect::SDK::Domain::Token::TokenSepaDirectDebit.new_from_hash(hash['sepaDirectDebit'])
          end
        end
      end
    end
  end
end
