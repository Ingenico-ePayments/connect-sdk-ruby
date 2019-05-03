#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/card'
require 'ingenico/connect/sdk/domain/payment/abstract_card_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/external_cardholder_authentication_data'
require 'ingenico/connect/sdk/domain/payment/three_d_secure'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class CardPaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Payment::AbstractCardPaymentMethodSpecificInput

        # {Ingenico::Connect::SDK::Domain::Definitions::Card}
        attr_accessor :card

        # {Ingenico::Connect::SDK::Domain::Payment::ExternalCardholderAuthenticationData}
        #
        # Deprecated; Use threeDSecure.externalCardholderAuthenticationData instead
        attr_accessor :external_cardholder_authentication_data

        # true/false
        attr_accessor :is_recurring

        # String
        #
        # Deprecated; Use threeDSecure.redirectionData.returnUrl instead
        attr_accessor :return_url

        # {Ingenico::Connect::SDK::Domain::Payment::ThreeDSecure}
        attr_accessor :three_d_secure

        def to_h
          hash = super
          add_to_hash(hash, 'card', @card)
          add_to_hash(hash, 'externalCardholderAuthenticationData', @external_cardholder_authentication_data)
          add_to_hash(hash, 'isRecurring', @is_recurring)
          add_to_hash(hash, 'returnUrl', @return_url)
          add_to_hash(hash, 'threeDSecure', @three_d_secure)
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
          if hash.has_key?('threeDSecure')
            if !(hash['threeDSecure'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecure']]
            end
            @three_d_secure = Ingenico::Connect::SDK::Domain::Payment::ThreeDSecure.new_from_hash(hash['threeDSecure'])
          end
        end
      end
    end
  end
end
