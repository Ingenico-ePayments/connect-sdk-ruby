#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/card_fraud_results'
require 'ingenico/connect/sdk/domain/payment/abstract_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/mobile_payment_data'
require 'ingenico/connect/sdk/domain/payment/three_d_secure_results'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] authorisation_code
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::CardFraudResults] fraud_results
      # @attr [String] network
      # @attr [Ingenico::Connect::SDK::Domain::Payment::MobilePaymentData] payment_data
      # @attr [Ingenico::Connect::SDK::Domain::Payment::ThreeDSecureResults] three_d_secure_results
      class MobilePaymentMethodSpecificOutput < Ingenico::Connect::SDK::Domain::Payment::AbstractPaymentMethodSpecificOutput

        attr_accessor :authorisation_code

        attr_accessor :fraud_results

        attr_accessor :network

        attr_accessor :payment_data

        attr_accessor :three_d_secure_results

        # @return (Hash)
        def to_h
          hash = super
          hash['authorisationCode'] = @authorisation_code unless @authorisation_code.nil?
          hash['fraudResults'] = @fraud_results.to_h unless @fraud_results.nil?
          hash['network'] = @network unless @network.nil?
          hash['paymentData'] = @payment_data.to_h unless @payment_data.nil?
          hash['threeDSecureResults'] = @three_d_secure_results.to_h unless @three_d_secure_results.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'authorisationCode'
            @authorisation_code = hash['authorisationCode']
          end
          if hash.has_key? 'fraudResults'
            raise TypeError, "value '%s' is not a Hash" % [hash['fraudResults']] unless hash['fraudResults'].is_a? Hash
            @fraud_results = Ingenico::Connect::SDK::Domain::Definitions::CardFraudResults.new_from_hash(hash['fraudResults'])
          end
          if hash.has_key? 'network'
            @network = hash['network']
          end
          if hash.has_key? 'paymentData'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentData']] unless hash['paymentData'].is_a? Hash
            @payment_data = Ingenico::Connect::SDK::Domain::Payment::MobilePaymentData.new_from_hash(hash['paymentData'])
          end
          if hash.has_key? 'threeDSecureResults'
            raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecureResults']] unless hash['threeDSecureResults'].is_a? Hash
            @three_d_secure_results = Ingenico::Connect::SDK::Domain::Payment::ThreeDSecureResults.new_from_hash(hash['threeDSecureResults'])
          end
        end
      end
    end
  end
end
