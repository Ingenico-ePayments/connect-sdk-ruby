#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/abstract_redirect_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_product840_specific_input_base'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct840SpecificInputBase] payment_product840_specific_input
      class RedirectPaymentMethodSpecificInputBase < Ingenico::Connect::SDK::Domain::Payment::AbstractRedirectPaymentMethodSpecificInput

        attr_accessor :payment_product840_specific_input

        # @return (Hash)
        def to_h
          hash = super
          hash['paymentProduct840SpecificInput'] = @payment_product840_specific_input.to_h unless @payment_product840_specific_input.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'paymentProduct840SpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct840SpecificInput']] unless hash['paymentProduct840SpecificInput'].is_a? Hash
            @payment_product840_specific_input = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct840SpecificInputBase.new_from_hash(hash['paymentProduct840SpecificInput'])
          end
        end
      end
    end
  end
end
