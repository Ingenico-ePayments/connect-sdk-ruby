#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/card'
require 'ingenico/connect/sdk/domain/payment/abstract_card_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/external_cardholder_authentication_data'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class CardPaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Payment::AbstractCardPaymentMethodSpecificInput

        # {Ingenico::Connect::SDK::Domain::Definitions::Card}
        attr_accessor :card

        # {Ingenico::Connect::SDK::Domain::Payment::ExternalCardholderAuthenticationData}
        attr_accessor :external_cardholder_authentication_data

        # true/false
        attr_accessor :is_recurring

        # String
        attr_accessor :return_url

        def to_h
          hash = super
          add_to_hash(hash, 'card', @card)
          add_to_hash(hash, 'externalCardholderAuthenticationData', @external_cardholder_authentication_data)
          add_to_hash(hash, 'isRecurring', @is_recurring)
          add_to_hash(hash, 'returnUrl', @return_url)
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
          if hash.has_key?('externalCardholderAuthenticationData')
            if !(hash['externalCardholderAuthenticationData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['externalCardholderAuthenticationData']]
            end
            @external_cardholder_authentication_data = Ingenico::Connect::SDK::Domain::Payment::ExternalCardholderAuthenticationData.new_from_hash(hash['externalCardholderAuthenticationData'])
          end
          if hash.has_key?('isRecurring')
            @is_recurring = hash['isRecurring']
          end
          if hash.has_key?('returnUrl')
            @return_url = hash['returnUrl']
          end
        end
      end
    end
  end
end
