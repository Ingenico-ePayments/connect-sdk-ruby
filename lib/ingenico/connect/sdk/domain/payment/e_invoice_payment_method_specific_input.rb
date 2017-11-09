#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/e_invoice_payment_method_specific_input_base'
require 'ingenico/connect/sdk/domain/payment/e_invoice_payment_product9000_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class EInvoicePaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Payment::EInvoicePaymentMethodSpecificInputBase

        # true/false
        attr_accessor :accepted_terms_and_conditions

        # {Ingenico::Connect::SDK::Domain::Payment::EInvoicePaymentProduct9000SpecificInput}
        attr_accessor :payment_product9000_specific_input

        def to_h
          hash = super
          add_to_hash(hash, 'acceptedTermsAndConditions', @accepted_terms_and_conditions)
          add_to_hash(hash, 'paymentProduct9000SpecificInput', @payment_product9000_specific_input)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('acceptedTermsAndConditions')
            @accepted_terms_and_conditions = hash['acceptedTermsAndConditions']
          end
          if hash.has_key?('paymentProduct9000SpecificInput')
            if !(hash['paymentProduct9000SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct9000SpecificInput']]
            end
            @payment_product9000_specific_input = Ingenico::Connect::SDK::Domain::Payment::EInvoicePaymentProduct9000SpecificInput.new_from_hash(hash['paymentProduct9000SpecificInput'])
          end
        end
      end
    end
  end
end
