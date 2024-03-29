#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/definitions/card'
require 'ingenico/connect/sdk/domain/payment/abstract_card_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/external_cardholder_authentication_data'
require 'ingenico/connect/sdk/domain/payment/scheme_token_data'
require 'ingenico/connect/sdk/domain/payment/three_d_secure'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::Card] card
          # @attr [Ingenico::Connect::SDK::Domain::Payment::ExternalCardholderAuthenticationData] external_cardholder_authentication_data
          # @attr [true/false] is_recurring
          # @attr [String] merchant_initiated_reason_indicator
          # @attr [Ingenico::Connect::SDK::Domain::Payment::SchemeTokenData] network_token_data
          # @attr [String] return_url
          # @attr [Ingenico::Connect::SDK::Domain::Payment::ThreeDSecure] three_d_secure
          class CardPaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Payment::AbstractCardPaymentMethodSpecificInput

            attr_accessor :card

            #
            # @deprecated Use threeDSecure.externalCardholderAuthenticationData instead
            attr_accessor :external_cardholder_authentication_data

            attr_accessor :is_recurring

            attr_accessor :merchant_initiated_reason_indicator

            attr_accessor :network_token_data

            #
            # @deprecated Use threeDSecure.redirectionData.returnUrl instead
            attr_accessor :return_url

            attr_accessor :three_d_secure

            # @return (Hash)
            def to_h
              hash = super
              hash['card'] = @card.to_h unless @card.nil?
              hash['externalCardholderAuthenticationData'] = @external_cardholder_authentication_data.to_h unless @external_cardholder_authentication_data.nil?
              hash['isRecurring'] = @is_recurring unless @is_recurring.nil?
              hash['merchantInitiatedReasonIndicator'] = @merchant_initiated_reason_indicator unless @merchant_initiated_reason_indicator.nil?
              hash['networkTokenData'] = @network_token_data.to_h unless @network_token_data.nil?
              hash['returnUrl'] = @return_url unless @return_url.nil?
              hash['threeDSecure'] = @three_d_secure.to_h unless @three_d_secure.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'card'
                raise TypeError, "value '%s' is not a Hash" % [hash['card']] unless hash['card'].is_a? Hash
                @card = Ingenico::Connect::SDK::Domain::Definitions::Card.new_from_hash(hash['card'])
              end
              if hash.has_key? 'externalCardholderAuthenticationData'
                raise TypeError, "value '%s' is not a Hash" % [hash['externalCardholderAuthenticationData']] unless hash['externalCardholderAuthenticationData'].is_a? Hash
                @external_cardholder_authentication_data = Ingenico::Connect::SDK::Domain::Payment::ExternalCardholderAuthenticationData.new_from_hash(hash['externalCardholderAuthenticationData'])
              end
              if hash.has_key? 'isRecurring'
                @is_recurring = hash['isRecurring']
              end
              if hash.has_key? 'merchantInitiatedReasonIndicator'
                @merchant_initiated_reason_indicator = hash['merchantInitiatedReasonIndicator']
              end
              if hash.has_key? 'networkTokenData'
                raise TypeError, "value '%s' is not a Hash" % [hash['networkTokenData']] unless hash['networkTokenData'].is_a? Hash
                @network_token_data = Ingenico::Connect::SDK::Domain::Payment::SchemeTokenData.new_from_hash(hash['networkTokenData'])
              end
              if hash.has_key? 'returnUrl'
                @return_url = hash['returnUrl']
              end
              if hash.has_key? 'threeDSecure'
                raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecure']] unless hash['threeDSecure'].is_a? Hash
                @three_d_secure = Ingenico::Connect::SDK::Domain::Payment::ThreeDSecure.new_from_hash(hash['threeDSecure'])
              end
            end
          end
        end
      end
    end
  end
end
