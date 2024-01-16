#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/card_recurrence_details'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] acquirer_promotion_code
          # @attr [String] authorization_mode
          # @attr [String] customer_reference
          # @attr [String] initial_scheme_transaction_id
          # @attr [Ingenico::Connect::SDK::Domain::Payment::CardRecurrenceDetails] recurring
          # @attr [String] recurring_payment_sequence_indicator
          # @attr [true/false] requires_approval
          # @attr [true/false] skip_authentication
          # @attr [true/false] skip_fraud_service
          # @attr [String] token
          # @attr [true/false] tokenize
          # @attr [String] transaction_channel
          # @attr [String] unscheduled_card_on_file_indicator
          # @attr [String] unscheduled_card_on_file_requestor
          # @attr [String] unscheduled_card_on_file_sequence_indicator
          class AbstractCardPaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Definitions::AbstractPaymentMethodSpecificInput

            attr_accessor :acquirer_promotion_code

            attr_accessor :authorization_mode

            attr_accessor :customer_reference

            attr_accessor :initial_scheme_transaction_id

            attr_accessor :recurring

            #
            # @deprecated Use recurring.recurringPaymentSequenceIndicator instead
            attr_accessor :recurring_payment_sequence_indicator

            attr_accessor :requires_approval

            #
            # @deprecated Use threeDSecure.skipAuthentication instead
            attr_accessor :skip_authentication

            attr_accessor :skip_fraud_service

            attr_accessor :token

            attr_accessor :tokenize

            attr_accessor :transaction_channel

            #
            # @deprecated Use unscheduledCardOnFileSequenceIndicator instead
            attr_accessor :unscheduled_card_on_file_indicator

            attr_accessor :unscheduled_card_on_file_requestor

            attr_accessor :unscheduled_card_on_file_sequence_indicator

            # @return (Hash)
            def to_h
              hash = super
              hash['acquirerPromotionCode'] = @acquirer_promotion_code unless @acquirer_promotion_code.nil?
              hash['authorizationMode'] = @authorization_mode unless @authorization_mode.nil?
              hash['customerReference'] = @customer_reference unless @customer_reference.nil?
              hash['initialSchemeTransactionId'] = @initial_scheme_transaction_id unless @initial_scheme_transaction_id.nil?
              hash['recurring'] = @recurring.to_h unless @recurring.nil?
              hash['recurringPaymentSequenceIndicator'] = @recurring_payment_sequence_indicator unless @recurring_payment_sequence_indicator.nil?
              hash['requiresApproval'] = @requires_approval unless @requires_approval.nil?
              hash['skipAuthentication'] = @skip_authentication unless @skip_authentication.nil?
              hash['skipFraudService'] = @skip_fraud_service unless @skip_fraud_service.nil?
              hash['token'] = @token unless @token.nil?
              hash['tokenize'] = @tokenize unless @tokenize.nil?
              hash['transactionChannel'] = @transaction_channel unless @transaction_channel.nil?
              hash['unscheduledCardOnFileIndicator'] = @unscheduled_card_on_file_indicator unless @unscheduled_card_on_file_indicator.nil?
              hash['unscheduledCardOnFileRequestor'] = @unscheduled_card_on_file_requestor unless @unscheduled_card_on_file_requestor.nil?
              hash['unscheduledCardOnFileSequenceIndicator'] = @unscheduled_card_on_file_sequence_indicator unless @unscheduled_card_on_file_sequence_indicator.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'acquirerPromotionCode'
                @acquirer_promotion_code = hash['acquirerPromotionCode']
              end
              if hash.has_key? 'authorizationMode'
                @authorization_mode = hash['authorizationMode']
              end
              if hash.has_key? 'customerReference'
                @customer_reference = hash['customerReference']
              end
              if hash.has_key? 'initialSchemeTransactionId'
                @initial_scheme_transaction_id = hash['initialSchemeTransactionId']
              end
              if hash.has_key? 'recurring'
                raise TypeError, "value '%s' is not a Hash" % [hash['recurring']] unless hash['recurring'].is_a? Hash
                @recurring = Ingenico::Connect::SDK::Domain::Payment::CardRecurrenceDetails.new_from_hash(hash['recurring'])
              end
              if hash.has_key? 'recurringPaymentSequenceIndicator'
                @recurring_payment_sequence_indicator = hash['recurringPaymentSequenceIndicator']
              end
              if hash.has_key? 'requiresApproval'
                @requires_approval = hash['requiresApproval']
              end
              if hash.has_key? 'skipAuthentication'
                @skip_authentication = hash['skipAuthentication']
              end
              if hash.has_key? 'skipFraudService'
                @skip_fraud_service = hash['skipFraudService']
              end
              if hash.has_key? 'token'
                @token = hash['token']
              end
              if hash.has_key? 'tokenize'
                @tokenize = hash['tokenize']
              end
              if hash.has_key? 'transactionChannel'
                @transaction_channel = hash['transactionChannel']
              end
              if hash.has_key? 'unscheduledCardOnFileIndicator'
                @unscheduled_card_on_file_indicator = hash['unscheduledCardOnFileIndicator']
              end
              if hash.has_key? 'unscheduledCardOnFileRequestor'
                @unscheduled_card_on_file_requestor = hash['unscheduledCardOnFileRequestor']
              end
              if hash.has_key? 'unscheduledCardOnFileSequenceIndicator'
                @unscheduled_card_on_file_sequence_indicator = hash['unscheduledCardOnFileSequenceIndicator']
              end
            end
          end
        end
      end
    end
  end
end
