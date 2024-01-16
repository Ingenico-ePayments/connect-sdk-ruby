#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/hostedcheckout/mobile_payment_product302_specific_input_hosted_checkout'
require 'ingenico/connect/sdk/domain/hostedcheckout/mobile_payment_product320_specific_input_hosted_checkout'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Hostedcheckout
          # @attr [String] authorization_mode
          # @attr [String] customer_reference
          # @attr [Ingenico::Connect::SDK::Domain::Hostedcheckout::MobilePaymentProduct302SpecificInputHostedCheckout] payment_product302_specific_input
          # @attr [Ingenico::Connect::SDK::Domain::Hostedcheckout::MobilePaymentProduct320SpecificInputHostedCheckout] payment_product320_specific_input
          # @attr [true/false] requires_approval
          # @attr [true/false] skip_fraud_service
          class MobilePaymentMethodSpecificInputHostedCheckout < Ingenico::Connect::SDK::Domain::Definitions::AbstractPaymentMethodSpecificInput

            attr_accessor :authorization_mode

            attr_accessor :customer_reference

            attr_accessor :payment_product302_specific_input

            attr_accessor :payment_product320_specific_input

            attr_accessor :requires_approval

            attr_accessor :skip_fraud_service

            # @return (Hash)
            def to_h
              hash = super
              hash['authorizationMode'] = @authorization_mode unless @authorization_mode.nil?
              hash['customerReference'] = @customer_reference unless @customer_reference.nil?
              hash['paymentProduct302SpecificInput'] = @payment_product302_specific_input.to_h unless @payment_product302_specific_input.nil?
              hash['paymentProduct320SpecificInput'] = @payment_product320_specific_input.to_h unless @payment_product320_specific_input.nil?
              hash['requiresApproval'] = @requires_approval unless @requires_approval.nil?
              hash['skipFraudService'] = @skip_fraud_service unless @skip_fraud_service.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'authorizationMode'
                @authorization_mode = hash['authorizationMode']
              end
              if hash.has_key? 'customerReference'
                @customer_reference = hash['customerReference']
              end
              if hash.has_key? 'paymentProduct302SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct302SpecificInput']] unless hash['paymentProduct302SpecificInput'].is_a? Hash
                @payment_product302_specific_input = Ingenico::Connect::SDK::Domain::Hostedcheckout::MobilePaymentProduct302SpecificInputHostedCheckout.new_from_hash(hash['paymentProduct302SpecificInput'])
              end
              if hash.has_key? 'paymentProduct320SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct320SpecificInput']] unless hash['paymentProduct320SpecificInput'].is_a? Hash
                @payment_product320_specific_input = Ingenico::Connect::SDK::Domain::Hostedcheckout::MobilePaymentProduct320SpecificInputHostedCheckout.new_from_hash(hash['paymentProduct320SpecificInput'])
              end
              if hash.has_key? 'requiresApproval'
                @requires_approval = hash['requiresApproval']
              end
              if hash.has_key? 'skipFraudService'
                @skip_fraud_service = hash['skipFraudService']
              end
            end
          end
        end
      end
    end
  end
end
