#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/hostedcheckout/mobile_payment_product302_specific_input_hosted_checkout'
require 'ingenico/connect/sdk/domain/hostedcheckout/mobile_payment_product320_specific_input_hosted_checkout'

module Ingenico::Connect::SDK
  module Domain
    module Hostedcheckout

      # @attr [Ingenico::Connect::SDK::Domain::Hostedcheckout::MobilePaymentProduct302SpecificInputHostedCheckout] payment_product302_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Hostedcheckout::MobilePaymentProduct320SpecificInputHostedCheckout] payment_product320_specific_input
      class MobilePaymentMethodSpecificInputHostedCheckout < Ingenico::Connect::SDK::Domain::Definitions::AbstractPaymentMethodSpecificInput

        attr_accessor :payment_product302_specific_input

        attr_accessor :payment_product320_specific_input

        # @return (Hash)
        def to_h
          hash = super
          hash['paymentProduct302SpecificInput'] = @payment_product302_specific_input.to_h unless @payment_product302_specific_input.nil?
          hash['paymentProduct320SpecificInput'] = @payment_product320_specific_input.to_h unless @payment_product320_specific_input.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'paymentProduct302SpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct302SpecificInput']] unless hash['paymentProduct302SpecificInput'].is_a? Hash
            @payment_product302_specific_input = Ingenico::Connect::SDK::Domain::Hostedcheckout::MobilePaymentProduct302SpecificInputHostedCheckout.new_from_hash(hash['paymentProduct302SpecificInput'])
          end
          if hash.has_key? 'paymentProduct320SpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct320SpecificInput']] unless hash['paymentProduct320SpecificInput'].is_a? Hash
            @payment_product320_specific_input = Ingenico::Connect::SDK::Domain::Hostedcheckout::MobilePaymentProduct320SpecificInputHostedCheckout.new_from_hash(hash['paymentProduct320SpecificInput'])
          end
        end
      end
    end
  end
end
