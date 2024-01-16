#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/definitions/card'
require 'ingenico/connect/sdk/domain/payout/abstract_payout_method_specific_input'
require 'ingenico/connect/sdk/domain/payout/payout_recipient'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payout
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::Card] card
          # @attr [Integer] payment_product_id
          # @attr [Ingenico::Connect::SDK::Domain::Payout::PayoutRecipient] recipient
          # @attr [String] token
          class CardPayoutMethodSpecificInput < Ingenico::Connect::SDK::Domain::Payout::AbstractPayoutMethodSpecificInput

            attr_accessor :card

            attr_accessor :payment_product_id

            attr_accessor :recipient

            attr_accessor :token

            # @return (Hash)
            def to_h
              hash = super
              hash['card'] = @card.to_h unless @card.nil?
              hash['paymentProductId'] = @payment_product_id unless @payment_product_id.nil?
              hash['recipient'] = @recipient.to_h unless @recipient.nil?
              hash['token'] = @token unless @token.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'card'
                raise TypeError, "value '%s' is not a Hash" % [hash['card']] unless hash['card'].is_a? Hash
                @card = Ingenico::Connect::SDK::Domain::Definitions::Card.new_from_hash(hash['card'])
              end
              if hash.has_key? 'paymentProductId'
                @payment_product_id = hash['paymentProductId']
              end
              if hash.has_key? 'recipient'
                raise TypeError, "value '%s' is not a Hash" % [hash['recipient']] unless hash['recipient'].is_a? Hash
                @recipient = Ingenico::Connect::SDK::Domain::Payout::PayoutRecipient.new_from_hash(hash['recipient'])
              end
              if hash.has_key? 'token'
                @token = hash['token']
              end
            end
          end
        end
      end
    end
  end
end
