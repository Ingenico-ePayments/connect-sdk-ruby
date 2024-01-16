#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/approve_payment_non_sepa_direct_debit_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/approve_payment_sepa_direct_debit_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/order_approve_payment'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [Integer] amount
          # @attr [Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentNonSepaDirectDebitPaymentMethodSpecificInput] direct_debit_payment_method_specific_input
          # @attr [Ingenico::Connect::SDK::Domain::Payment::OrderApprovePayment] order
          # @attr [Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentSepaDirectDebitPaymentMethodSpecificInput] sepa_direct_debit_payment_method_specific_input
          class ApprovePaymentRequest < Ingenico::Connect::SDK::DataObject

            attr_accessor :amount

            attr_accessor :direct_debit_payment_method_specific_input

            attr_accessor :order

            attr_accessor :sepa_direct_debit_payment_method_specific_input

            # @return (Hash)
            def to_h
              hash = super
              hash['amount'] = @amount unless @amount.nil?
              hash['directDebitPaymentMethodSpecificInput'] = @direct_debit_payment_method_specific_input.to_h unless @direct_debit_payment_method_specific_input.nil?
              hash['order'] = @order.to_h unless @order.nil?
              hash['sepaDirectDebitPaymentMethodSpecificInput'] = @sepa_direct_debit_payment_method_specific_input.to_h unless @sepa_direct_debit_payment_method_specific_input.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amount'
                @amount = hash['amount']
              end
              if hash.has_key? 'directDebitPaymentMethodSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['directDebitPaymentMethodSpecificInput']] unless hash['directDebitPaymentMethodSpecificInput'].is_a? Hash
                @direct_debit_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentNonSepaDirectDebitPaymentMethodSpecificInput.new_from_hash(hash['directDebitPaymentMethodSpecificInput'])
              end
              if hash.has_key? 'order'
                raise TypeError, "value '%s' is not a Hash" % [hash['order']] unless hash['order'].is_a? Hash
                @order = Ingenico::Connect::SDK::Domain::Payment::OrderApprovePayment.new_from_hash(hash['order'])
              end
              if hash.has_key? 'sepaDirectDebitPaymentMethodSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['sepaDirectDebitPaymentMethodSpecificInput']] unless hash['sepaDirectDebitPaymentMethodSpecificInput'].is_a? Hash
                @sepa_direct_debit_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentSepaDirectDebitPaymentMethodSpecificInput.new_from_hash(hash['sepaDirectDebitPaymentMethodSpecificInput'])
              end
            end
          end
        end
      end
    end
  end
end
