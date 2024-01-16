#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/payment/abstract_redirect_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_product4101_specific_input_base'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_product840_specific_input_base'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct4101SpecificInputBase] payment_product4101_specific_input
          # @attr [Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct840SpecificInputBase] payment_product840_specific_input
          class RedirectPaymentMethodSpecificInputBase < Ingenico::Connect::SDK::Domain::Payment::AbstractRedirectPaymentMethodSpecificInput

            attr_accessor :payment_product4101_specific_input

            attr_accessor :payment_product840_specific_input

            # @return (Hash)
            def to_h
              hash = super
              hash['paymentProduct4101SpecificInput'] = @payment_product4101_specific_input.to_h unless @payment_product4101_specific_input.nil?
              hash['paymentProduct840SpecificInput'] = @payment_product840_specific_input.to_h unless @payment_product840_specific_input.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'paymentProduct4101SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct4101SpecificInput']] unless hash['paymentProduct4101SpecificInput'].is_a? Hash
                @payment_product4101_specific_input = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct4101SpecificInputBase.new_from_hash(hash['paymentProduct4101SpecificInput'])
              end
              if hash.has_key? 'paymentProduct840SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct840SpecificInput']] unless hash['paymentProduct840SpecificInput'].is_a? Hash
                @payment_product840_specific_input = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct840SpecificInputBase.new_from_hash(hash['paymentProduct840SpecificInput'])
              end
            end
          end
        end
      end
    end
  end
end
