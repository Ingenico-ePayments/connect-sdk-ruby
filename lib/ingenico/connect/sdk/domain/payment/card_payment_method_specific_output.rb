#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/card_essentials'
require 'ingenico/connect/sdk/domain/definitions/card_fraud_results'
require 'ingenico/connect/sdk/domain/payment/abstract_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/three_d_secure_results'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] authorisation_code
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::CardEssentials] card
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::CardFraudResults] fraud_results
      # @attr [Ingenico::Connect::SDK::Domain::Payment::ThreeDSecureResults] three_d_secure_results
      # @attr [String] token
      class CardPaymentMethodSpecificOutput < Ingenico::Connect::SDK::Domain::Payment::AbstractPaymentMethodSpecificOutput

        attr_accessor :authorisation_code

        attr_accessor :card

        attr_accessor :fraud_results

        attr_accessor :three_d_secure_results

        attr_accessor :token

        # @return (Hash)
        def to_h
          hash = super
          hash['authorisationCode'] = @authorisation_code unless @authorisation_code.nil?
          hash['card'] = @card.to_h unless @card.nil?
          hash['fraudResults'] = @fraud_results.to_h unless @fraud_results.nil?
          hash['threeDSecureResults'] = @three_d_secure_results.to_h unless @three_d_secure_results.nil?
          hash['token'] = @token unless @token.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'authorisationCode'
            @authorisation_code = hash['authorisationCode']
          end
          if hash.has_key? 'card'
            raise TypeError, "value '%s' is not a Hash" % [hash['card']] unless hash['card'].is_a? Hash
            @card = Ingenico::Connect::SDK::Domain::Definitions::CardEssentials.new_from_hash(hash['card'])
          end
          if hash.has_key? 'fraudResults'
            raise TypeError, "value '%s' is not a Hash" % [hash['fraudResults']] unless hash['fraudResults'].is_a? Hash
            @fraud_results = Ingenico::Connect::SDK::Domain::Definitions::CardFraudResults.new_from_hash(hash['fraudResults'])
          end
          if hash.has_key? 'threeDSecureResults'
            raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecureResults']] unless hash['threeDSecureResults'].is_a? Hash
            @three_d_secure_results = Ingenico::Connect::SDK::Domain::Payment::ThreeDSecureResults.new_from_hash(hash['threeDSecureResults'])
          end
          if hash.has_key? 'token'
            @token = hash['token']
          end
        end
      end
    end
  end
end
