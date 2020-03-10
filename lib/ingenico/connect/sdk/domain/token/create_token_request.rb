#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/token/token_card'
require 'ingenico/connect/sdk/domain/token/token_e_wallet'
require 'ingenico/connect/sdk/domain/token/token_non_sepa_direct_debit'
require 'ingenico/connect/sdk/domain/token/token_sepa_direct_debit_without_creditor'

module Ingenico::Connect::SDK
  module Domain
    module Token

      # @attr [Ingenico::Connect::SDK::Domain::Token::TokenCard] card
      # @attr [Ingenico::Connect::SDK::Domain::Token::TokenEWallet] e_wallet
      # @attr [String] encrypted_customer_input
      # @attr [Ingenico::Connect::SDK::Domain::Token::TokenNonSepaDirectDebit] non_sepa_direct_debit
      # @attr [Integer] payment_product_id
      # @attr [Ingenico::Connect::SDK::Domain::Token::TokenSepaDirectDebitWithoutCreditor] sepa_direct_debit
      class CreateTokenRequest < Ingenico::Connect::SDK::DataObject

        attr_accessor :card

        attr_accessor :e_wallet

        attr_accessor :encrypted_customer_input

        attr_accessor :non_sepa_direct_debit

        attr_accessor :payment_product_id

        attr_accessor :sepa_direct_debit

        # @return (Hash)
        def to_h
          hash = super
          hash['card'] = @card.to_h unless @card.nil?
          hash['eWallet'] = @e_wallet.to_h unless @e_wallet.nil?
          hash['encryptedCustomerInput'] = @encrypted_customer_input unless @encrypted_customer_input.nil?
          hash['nonSepaDirectDebit'] = @non_sepa_direct_debit.to_h unless @non_sepa_direct_debit.nil?
          hash['paymentProductId'] = @payment_product_id unless @payment_product_id.nil?
          hash['sepaDirectDebit'] = @sepa_direct_debit.to_h unless @sepa_direct_debit.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'card'
            raise TypeError, "value '%s' is not a Hash" % [hash['card']] unless hash['card'].is_a? Hash
            @card = Ingenico::Connect::SDK::Domain::Token::TokenCard.new_from_hash(hash['card'])
          end
          if hash.has_key? 'eWallet'
            raise TypeError, "value '%s' is not a Hash" % [hash['eWallet']] unless hash['eWallet'].is_a? Hash
            @e_wallet = Ingenico::Connect::SDK::Domain::Token::TokenEWallet.new_from_hash(hash['eWallet'])
          end
          if hash.has_key? 'encryptedCustomerInput'
            @encrypted_customer_input = hash['encryptedCustomerInput']
          end
          if hash.has_key? 'nonSepaDirectDebit'
            raise TypeError, "value '%s' is not a Hash" % [hash['nonSepaDirectDebit']] unless hash['nonSepaDirectDebit'].is_a? Hash
            @non_sepa_direct_debit = Ingenico::Connect::SDK::Domain::Token::TokenNonSepaDirectDebit.new_from_hash(hash['nonSepaDirectDebit'])
          end
          if hash.has_key? 'paymentProductId'
            @payment_product_id = hash['paymentProductId']
          end
          if hash.has_key? 'sepaDirectDebit'
            raise TypeError, "value '%s' is not a Hash" % [hash['sepaDirectDebit']] unless hash['sepaDirectDebit'].is_a? Hash
            @sepa_direct_debit = Ingenico::Connect::SDK::Domain::Token::TokenSepaDirectDebitWithoutCreditor.new_from_hash(hash['sepaDirectDebit'])
          end
        end
      end
    end
  end
end
