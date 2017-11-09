#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/fraud_results'
require 'ingenico/connect/sdk/domain/payment/abstract_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/payment_product771_specific_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class SepaDirectDebitPaymentMethodSpecificOutput < Ingenico::Connect::SDK::Domain::Payment::AbstractPaymentMethodSpecificOutput

        # {Ingenico::Connect::SDK::Domain::Definitions::FraudResults}
        attr_accessor :fraud_results

        # {Ingenico::Connect::SDK::Domain::Payment::PaymentProduct771SpecificOutput}
        attr_accessor :payment_product771_specific_output

        def to_h
          hash = super
          add_to_hash(hash, 'fraudResults', @fraud_results)
          add_to_hash(hash, 'paymentProduct771SpecificOutput', @payment_product771_specific_output)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('fraudResults')
            if !(hash['fraudResults'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['fraudResults']]
            end
            @fraud_results = Ingenico::Connect::SDK::Domain::Definitions::FraudResults.new_from_hash(hash['fraudResults'])
          end
          if hash.has_key?('paymentProduct771SpecificOutput')
            if !(hash['paymentProduct771SpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct771SpecificOutput']]
            end
            @payment_product771_specific_output = Ingenico::Connect::SDK::Domain::Payment::PaymentProduct771SpecificOutput.new_from_hash(hash['paymentProduct771SpecificOutput'])
          end
        end
      end
    end
  end
end
