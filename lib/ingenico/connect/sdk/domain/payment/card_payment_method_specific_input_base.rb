#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_payment_method_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_CardPaymentMethodSpecificInputBase CardPaymentMethodSpecificInputBase}
      class CardPaymentMethodSpecificInputBase < Ingenico::Connect::SDK::Domain::Definitions::AbstractPaymentMethodSpecificInput

        # String
        attr_accessor :authorization_mode

        # String
        attr_accessor :customer_reference

        # String
        attr_accessor :recurring_payment_sequence_indicator

        # true/false
        attr_accessor :requires_approval

        # true/false
        attr_accessor :skip_authentication

        # true/false
        attr_accessor :skip_fraud_service

        # String
        attr_accessor :token

        def to_h
          hash = super
          add_to_hash(hash, 'authorizationMode', @authorization_mode)
          add_to_hash(hash, 'customerReference', @customer_reference)
          add_to_hash(hash, 'recurringPaymentSequenceIndicator', @recurring_payment_sequence_indicator)
          add_to_hash(hash, 'requiresApproval', @requires_approval)
          add_to_hash(hash, 'skipAuthentication', @skip_authentication)
          add_to_hash(hash, 'skipFraudService', @skip_fraud_service)
          add_to_hash(hash, 'token', @token)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('authorizationMode')
            @authorization_mode = hash['authorizationMode']
          end
          if hash.has_key?('customerReference')
            @customer_reference = hash['customerReference']
          end
          if hash.has_key?('recurringPaymentSequenceIndicator')
            @recurring_payment_sequence_indicator = hash['recurringPaymentSequenceIndicator']
          end
          if hash.has_key?('requiresApproval')
            @requires_approval = hash['requiresApproval']
          end
          if hash.has_key?('skipAuthentication')
            @skip_authentication = hash['skipAuthentication']
          end
          if hash.has_key?('skipFraudService')
            @skip_fraud_service = hash['skipFraudService']
          end
          if hash.has_key?('token')
            @token = hash['token']
          end
        end
      end
    end
  end
end
