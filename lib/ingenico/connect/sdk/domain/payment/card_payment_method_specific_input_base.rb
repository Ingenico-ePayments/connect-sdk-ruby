#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_payment_method_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

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

        # true/false
        attr_accessor :tokenize

        # String
        attr_accessor :transaction_channel

        # String
        attr_accessor :unscheduled_card_on_file_indicator

        # String
        attr_accessor :unscheduled_card_on_file_requestor

        def to_h
          hash = super
          add_to_hash(hash, 'authorizationMode', @authorization_mode)
          add_to_hash(hash, 'customerReference', @customer_reference)
          add_to_hash(hash, 'recurringPaymentSequenceIndicator', @recurring_payment_sequence_indicator)
          add_to_hash(hash, 'requiresApproval', @requires_approval)
          add_to_hash(hash, 'skipAuthentication', @skip_authentication)
          add_to_hash(hash, 'skipFraudService', @skip_fraud_service)
          add_to_hash(hash, 'token', @token)
          add_to_hash(hash, 'tokenize', @tokenize)
          add_to_hash(hash, 'transactionChannel', @transaction_channel)
          add_to_hash(hash, 'unscheduledCardOnFileIndicator', @unscheduled_card_on_file_indicator)
          add_to_hash(hash, 'unscheduledCardOnFileRequestor', @unscheduled_card_on_file_requestor)
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
          if hash.has_key?('tokenize')
            @tokenize = hash['tokenize']
          end
          if hash.has_key?('transactionChannel')
            @transaction_channel = hash['transactionChannel']
          end
          if hash.has_key?('unscheduledCardOnFileIndicator')
            @unscheduled_card_on_file_indicator = hash['unscheduledCardOnFileIndicator']
          end
          if hash.has_key?('unscheduledCardOnFileRequestor')
            @unscheduled_card_on_file_requestor = hash['unscheduledCardOnFileRequestor']
          end
        end
      end
    end
  end
end
