#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/approve_payment_non_sepa_direct_debit_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/approve_payment_sepa_direct_debit_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/order_approve_payment'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class ApprovePaymentRequest < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :amount

        # {Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentNonSepaDirectDebitPaymentMethodSpecificInput}
        attr_accessor :direct_debit_payment_method_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::OrderApprovePayment}
        attr_accessor :order

        # {Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentSepaDirectDebitPaymentMethodSpecificInput}
        attr_accessor :sepa_direct_debit_payment_method_specific_input

        def to_h
          hash = super
          add_to_hash(hash, 'amount', @amount)
          add_to_hash(hash, 'directDebitPaymentMethodSpecificInput', @direct_debit_payment_method_specific_input)
          add_to_hash(hash, 'order', @order)
          add_to_hash(hash, 'sepaDirectDebitPaymentMethodSpecificInput', @sepa_direct_debit_payment_method_specific_input)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('amount')
            @amount = hash['amount']
          end
          if hash.has_key?('directDebitPaymentMethodSpecificInput')
            if !(hash['directDebitPaymentMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['directDebitPaymentMethodSpecificInput']]
            end
            @direct_debit_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentNonSepaDirectDebitPaymentMethodSpecificInput.new_from_hash(hash['directDebitPaymentMethodSpecificInput'])
          end
          if hash.has_key?('order')
            if !(hash['order'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['order']]
            end
            @order = Ingenico::Connect::SDK::Domain::Payment::OrderApprovePayment.new_from_hash(hash['order'])
          end
          if hash.has_key?('sepaDirectDebitPaymentMethodSpecificInput')
            if !(hash['sepaDirectDebitPaymentMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['sepaDirectDebitPaymentMethodSpecificInput']]
            end
            @sepa_direct_debit_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentSepaDirectDebitPaymentMethodSpecificInput.new_from_hash(hash['sepaDirectDebitPaymentMethodSpecificInput'])
          end
        end
      end
    end
  end
end
