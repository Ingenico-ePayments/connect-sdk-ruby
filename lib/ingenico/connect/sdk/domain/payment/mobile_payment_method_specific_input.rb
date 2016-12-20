#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/decrypted_payment_data'
require 'ingenico/connect/sdk/domain/payment/mobile_payment_product320_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_MobilePaymentMethodSpecificInput MobilePaymentMethodSpecificInput}
      class MobilePaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Definitions::AbstractPaymentMethodSpecificInput

        # String
        attr_accessor :authorization_mode

        # {Ingenico::Connect::SDK::Domain::Payment::DecryptedPaymentData}
        attr_accessor :decrypted_payment_data

        # String
        attr_accessor :encrypted_payment_data

        # {Ingenico::Connect::SDK::Domain::Payment::MobilePaymentProduct320SpecificInput}
        attr_accessor :payment_product320_specific_input

        # true/false
        attr_accessor :requires_approval

        # true/false
        attr_accessor :skip_fraud_service

        # String
        attr_accessor :transaction_id

        def to_h
          hash = super
          add_to_hash(hash, 'authorizationMode', @authorization_mode)
          add_to_hash(hash, 'decryptedPaymentData', @decrypted_payment_data)
          add_to_hash(hash, 'encryptedPaymentData', @encrypted_payment_data)
          add_to_hash(hash, 'paymentProduct320SpecificInput', @payment_product320_specific_input)
          add_to_hash(hash, 'requiresApproval', @requires_approval)
          add_to_hash(hash, 'skipFraudService', @skip_fraud_service)
          add_to_hash(hash, 'transactionId', @transaction_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('authorizationMode')
            @authorization_mode = hash['authorizationMode']
          end
          if hash.has_key?('decryptedPaymentData')
            if !(hash['decryptedPaymentData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['decryptedPaymentData']]
            end
            @decrypted_payment_data = Ingenico::Connect::SDK::Domain::Payment::DecryptedPaymentData.new_from_hash(hash['decryptedPaymentData'])
          end
          if hash.has_key?('encryptedPaymentData')
            @encrypted_payment_data = hash['encryptedPaymentData']
          end
          if hash.has_key?('paymentProduct320SpecificInput')
            if !(hash['paymentProduct320SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct320SpecificInput']]
            end
            @payment_product320_specific_input = Ingenico::Connect::SDK::Domain::Payment::MobilePaymentProduct320SpecificInput.new_from_hash(hash['paymentProduct320SpecificInput'])
          end
          if hash.has_key?('requiresApproval')
            @requires_approval = hash['requiresApproval']
          end
          if hash.has_key?('skipFraudService')
            @skip_fraud_service = hash['skipFraudService']
          end
          if hash.has_key?('transactionId')
            @transaction_id = hash['transactionId']
          end
        end
      end
    end
  end
end
