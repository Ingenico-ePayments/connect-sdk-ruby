#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/abstract_redirect_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_product840_specific_input_base'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class RedirectPaymentMethodSpecificInputBase < Ingenico::Connect::SDK::Domain::Payment::AbstractRedirectPaymentMethodSpecificInput

        # {Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct840SpecificInputBase}
        attr_accessor :payment_product840_specific_input

        def to_h
          hash = super
          add_to_hash(hash, 'paymentProduct840SpecificInput', @payment_product840_specific_input)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('paymentProduct840SpecificInput')
            if !(hash['paymentProduct840SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct840SpecificInput']]
            end
            @payment_product840_specific_input = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct840SpecificInputBase.new_from_hash(hash['paymentProduct840SpecificInput'])
          end
        end
      end
    end
  end
end
