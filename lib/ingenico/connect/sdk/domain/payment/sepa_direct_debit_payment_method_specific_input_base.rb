#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/abstract_sepa_direct_debit_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/sepa_direct_debit_payment_product771_specific_input_base'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class SepaDirectDebitPaymentMethodSpecificInputBase < Ingenico::Connect::SDK::Domain::Payment::AbstractSepaDirectDebitPaymentMethodSpecificInput

        # {Ingenico::Connect::SDK::Domain::Payment::SepaDirectDebitPaymentProduct771SpecificInputBase}
        attr_accessor :payment_product771_specific_input

        def to_h
          hash = super
          add_to_hash(hash, 'paymentProduct771SpecificInput', @payment_product771_specific_input)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('paymentProduct771SpecificInput')
            if !(hash['paymentProduct771SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct771SpecificInput']]
            end
            @payment_product771_specific_input = Ingenico::Connect::SDK::Domain::Payment::SepaDirectDebitPaymentProduct771SpecificInputBase.new_from_hash(hash['paymentProduct771SpecificInput'])
          end
        end
      end
    end
  end
end
