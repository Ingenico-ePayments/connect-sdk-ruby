#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/fraud_results'
require 'ingenico/connect/sdk/domain/payment/abstract_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/e_invoice_payment_product9000_specific_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::FraudResults] fraud_results
      # @attr [Ingenico::Connect::SDK::Domain::Payment::EInvoicePaymentProduct9000SpecificOutput] payment_product9000_specific_output
      class EInvoicePaymentMethodSpecificOutput < Ingenico::Connect::SDK::Domain::Payment::AbstractPaymentMethodSpecificOutput

        attr_accessor :fraud_results

        attr_accessor :payment_product9000_specific_output

        # @return (Hash)
        def to_h
          hash = super
          hash['fraudResults'] = @fraud_results.to_h unless @fraud_results.nil?
          hash['paymentProduct9000SpecificOutput'] = @payment_product9000_specific_output.to_h unless @payment_product9000_specific_output.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'fraudResults'
            raise TypeError, "value '%s' is not a Hash" % [hash['fraudResults']] unless hash['fraudResults'].is_a? Hash
            @fraud_results = Ingenico::Connect::SDK::Domain::Definitions::FraudResults.new_from_hash(hash['fraudResults'])
          end
          if hash.has_key? 'paymentProduct9000SpecificOutput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct9000SpecificOutput']] unless hash['paymentProduct9000SpecificOutput'].is_a? Hash
            @payment_product9000_specific_output = Ingenico::Connect::SDK::Domain::Payment::EInvoicePaymentProduct9000SpecificOutput.new_from_hash(hash['paymentProduct9000SpecificOutput'])
          end
        end
      end
    end
  end
end
