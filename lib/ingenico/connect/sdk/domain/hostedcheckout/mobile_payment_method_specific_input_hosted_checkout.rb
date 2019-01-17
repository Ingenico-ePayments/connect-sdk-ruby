#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/hostedcheckout/mobile_payment_product320_specific_input_hosted_checkout'

module Ingenico::Connect::SDK
  module Domain
    module Hostedcheckout

      class MobilePaymentMethodSpecificInputHostedCheckout < Ingenico::Connect::SDK::Domain::Definitions::AbstractPaymentMethodSpecificInput

        # {Ingenico::Connect::SDK::Domain::Hostedcheckout::MobilePaymentProduct320SpecificInputHostedCheckout}
        attr_accessor :payment_product320_specific_input

        def to_h
          hash = super
          add_to_hash(hash, 'paymentProduct320SpecificInput', @payment_product320_specific_input)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('paymentProduct320SpecificInput')
            if !(hash['paymentProduct320SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct320SpecificInput']]
            end
            @payment_product320_specific_input = Ingenico::Connect::SDK::Domain::Hostedcheckout::MobilePaymentProduct320SpecificInputHostedCheckout.new_from_hash(hash['paymentProduct320SpecificInput'])
          end
        end
      end
    end
  end
end
