#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/abstract_cash_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/cash_payment_product1503_specific_input'
require 'ingenico/connect/sdk/domain/payment/cash_payment_product1504_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class CashPaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Payment::AbstractCashPaymentMethodSpecificInput

        # {Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1503SpecificInput}
        #
        # Deprecated; No replacement
        attr_accessor :payment_product1503_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1504SpecificInput}
        attr_accessor :payment_product1504_specific_input

        def to_h
          hash = super
          add_to_hash(hash, 'paymentProduct1503SpecificInput', @payment_product1503_specific_input)
          add_to_hash(hash, 'paymentProduct1504SpecificInput', @payment_product1504_specific_input)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('paymentProduct1503SpecificInput')
            if !(hash['paymentProduct1503SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct1503SpecificInput']]
            end
            @payment_product1503_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1503SpecificInput.new_from_hash(hash['paymentProduct1503SpecificInput'])
          end
          if hash.has_key?('paymentProduct1504SpecificInput')
            if !(hash['paymentProduct1504SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct1504SpecificInput']]
            end
            @payment_product1504_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1504SpecificInput.new_from_hash(hash['paymentProduct1504SpecificInput'])
          end
        end
      end
    end
  end
end
