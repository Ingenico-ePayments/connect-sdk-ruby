#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/card'
require 'ingenico/connect/sdk/domain/payout/abstract_payout_method_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payout

      class CardPayoutMethodSpecificInput < Ingenico::Connect::SDK::Domain::Payout::AbstractPayoutMethodSpecificInput

        # {Ingenico::Connect::SDK::Domain::Definitions::Card}
        attr_accessor :card

        # Integer
        attr_accessor :payment_product_id

        def to_h
          hash = super
          add_to_hash(hash, 'card', @card)
          add_to_hash(hash, 'paymentProductId', @payment_product_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('card')
            if !(hash['card'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['card']]
            end
            @card = Ingenico::Connect::SDK::Domain::Definitions::Card.new_from_hash(hash['card'])
          end
          if hash.has_key?('paymentProductId')
            @payment_product_id = hash['paymentProductId']
          end
        end
      end
    end
  end
end
