#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_payment_method_specific_input'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [Integer] expiration_period
          # @attr [String] recurring_payment_sequence_indicator
          # @attr [true/false] requires_approval
          # @attr [String] token
          # @attr [true/false] tokenize
          class AbstractRedirectPaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Definitions::AbstractPaymentMethodSpecificInput

            attr_accessor :expiration_period

            attr_accessor :recurring_payment_sequence_indicator

            attr_accessor :requires_approval

            attr_accessor :token

            attr_accessor :tokenize

            # @return (Hash)
            def to_h
              hash = super
              hash['expirationPeriod'] = @expiration_period unless @expiration_period.nil?
              hash['recurringPaymentSequenceIndicator'] = @recurring_payment_sequence_indicator unless @recurring_payment_sequence_indicator.nil?
              hash['requiresApproval'] = @requires_approval unless @requires_approval.nil?
              hash['token'] = @token unless @token.nil?
              hash['tokenize'] = @tokenize unless @tokenize.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'expirationPeriod'
                @expiration_period = hash['expirationPeriod']
              end
              if hash.has_key? 'recurringPaymentSequenceIndicator'
                @recurring_payment_sequence_indicator = hash['recurringPaymentSequenceIndicator']
              end
              if hash.has_key? 'requiresApproval'
                @requires_approval = hash['requiresApproval']
              end
              if hash.has_key? 'token'
                @token = hash['token']
              end
              if hash.has_key? 'tokenize'
                @tokenize = hash['tokenize']
              end
            end
          end
        end
      end
    end
  end
end
