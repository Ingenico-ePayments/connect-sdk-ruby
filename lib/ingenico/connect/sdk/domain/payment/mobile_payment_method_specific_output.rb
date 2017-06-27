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

      class MobilePaymentMethodSpecificOutput < Ingenico::Connect::SDK::Domain::Payment::AbstractPaymentMethodSpecificOutput

        # String
        attr_accessor :authorisation_code

        # {Ingenico::Connect::SDK::Domain::Definitions::CardFraudResults}
        attr_accessor :fraud_results

        # String
        attr_accessor :network

        # {Ingenico::Connect::SDK::Domain::Payment::MobilePaymentData}
        attr_accessor :payment_data

        # {Ingenico::Connect::SDK::Domain::Payment::ThreeDSecureResults}
        attr_accessor :three_d_secure_results

        def to_h
          hash = super
          add_to_hash(hash, 'authorisationCode', @authorisation_code)
          add_to_hash(hash, 'fraudResults', @fraud_results)
          add_to_hash(hash, 'network', @network)
          add_to_hash(hash, 'paymentData', @payment_data)
          add_to_hash(hash, 'threeDSecureResults', @three_d_secure_results)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('authorisationCode')
            @authorisation_code = hash['authorisationCode']
          end
          if hash.has_key?('fraudResults')
            if !(hash['fraudResults'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['fraudResults']]
            end
            @fraud_results = Ingenico::Connect::SDK::Domain::Definitions::CardFraudResults.new_from_hash(hash['fraudResults'])
          end
          if hash.has_key?('network')
            @network = hash['network']
          end
          if hash.has_key?('paymentData')
            if !(hash['paymentData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentData']]
            end
            @payment_data = Ingenico::Connect::SDK::Domain::Payment::MobilePaymentData.new_from_hash(hash['paymentData'])
          end
          if hash.has_key?('threeDSecureResults')
            if !(hash['threeDSecureResults'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecureResults']]
            end
            @three_d_secure_results = Ingenico::Connect::SDK::Domain::Payment::ThreeDSecureResults.new_from_hash(hash['threeDSecureResults'])
          end
        end
      end
    end
  end
end
