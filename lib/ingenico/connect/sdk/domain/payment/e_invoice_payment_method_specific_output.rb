#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/abstract_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/e_invoice_payment_product9000_specific_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class EInvoicePaymentMethodSpecificOutput < Ingenico::Connect::SDK::Domain::Payment::AbstractPaymentMethodSpecificOutput

        # {Ingenico::Connect::SDK::Domain::Payment::EInvoicePaymentProduct9000SpecificOutput}
        attr_accessor :payment_product9000_specific_output

        def to_h
          hash = super
          add_to_hash(hash, 'paymentProduct9000SpecificOutput', @payment_product9000_specific_output)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('paymentProduct9000SpecificOutput')
            if !(hash['paymentProduct9000SpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct9000SpecificOutput']]
            end
            @payment_product9000_specific_output = Ingenico::Connect::SDK::Domain::Payment::EInvoicePaymentProduct9000SpecificOutput.new_from_hash(hash['paymentProduct9000SpecificOutput'])
          end
        end
      end
    end
  end
end
