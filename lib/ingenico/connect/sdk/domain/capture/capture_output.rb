#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/bank_transfer_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/card_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/cash_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/invoice_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/mobile_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/non_sepa_direct_debit_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/order_output'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/sepa_direct_debit_payment_method_specific_output'

module Ingenico::Connect::SDK
  module Domain
    module Capture

      class CaptureOutput < Ingenico::Connect::SDK::Domain::Payment::OrderOutput

        # Integer
        attr_accessor :amount_paid

        # {Ingenico::Connect::SDK::Domain::Payment::BankTransferPaymentMethodSpecificOutput}
        attr_accessor :bank_transfer_payment_method_specific_output

        # {Ingenico::Connect::SDK::Domain::Payment::CardPaymentMethodSpecificOutput}
        attr_accessor :card_payment_method_specific_output

        # {Ingenico::Connect::SDK::Domain::Payment::CashPaymentMethodSpecificOutput}
        attr_accessor :cash_payment_method_specific_output

        # {Ingenico::Connect::SDK::Domain::Payment::NonSepaDirectDebitPaymentMethodSpecificOutput}
        attr_accessor :direct_debit_payment_method_specific_output

        # {Ingenico::Connect::SDK::Domain::Payment::InvoicePaymentMethodSpecificOutput}
        attr_accessor :invoice_payment_method_specific_output

        # {Ingenico::Connect::SDK::Domain::Payment::MobilePaymentMethodSpecificOutput}
        attr_accessor :mobile_payment_method_specific_output

        # String
        attr_accessor :payment_method

        # {Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentMethodSpecificOutput}
        attr_accessor :redirect_payment_method_specific_output

        # {Ingenico::Connect::SDK::Domain::Payment::SepaDirectDebitPaymentMethodSpecificOutput}
        attr_accessor :sepa_direct_debit_payment_method_specific_output

        def to_h
          hash = super
          add_to_hash(hash, 'amountPaid', @amount_paid)
          add_to_hash(hash, 'bankTransferPaymentMethodSpecificOutput', @bank_transfer_payment_method_specific_output)
          add_to_hash(hash, 'cardPaymentMethodSpecificOutput', @card_payment_method_specific_output)
          add_to_hash(hash, 'cashPaymentMethodSpecificOutput', @cash_payment_method_specific_output)
          add_to_hash(hash, 'directDebitPaymentMethodSpecificOutput', @direct_debit_payment_method_specific_output)
          add_to_hash(hash, 'invoicePaymentMethodSpecificOutput', @invoice_payment_method_specific_output)
          add_to_hash(hash, 'mobilePaymentMethodSpecificOutput', @mobile_payment_method_specific_output)
          add_to_hash(hash, 'paymentMethod', @payment_method)
          add_to_hash(hash, 'redirectPaymentMethodSpecificOutput', @redirect_payment_method_specific_output)
          add_to_hash(hash, 'sepaDirectDebitPaymentMethodSpecificOutput', @sepa_direct_debit_payment_method_specific_output)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('amountPaid')
            @amount_paid = hash['amountPaid']
          end
          if hash.has_key?('bankTransferPaymentMethodSpecificOutput')
            if !(hash['bankTransferPaymentMethodSpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['bankTransferPaymentMethodSpecificOutput']]
            end
            @bank_transfer_payment_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::BankTransferPaymentMethodSpecificOutput.new_from_hash(hash['bankTransferPaymentMethodSpecificOutput'])
          end
          if hash.has_key?('cardPaymentMethodSpecificOutput')
            if !(hash['cardPaymentMethodSpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['cardPaymentMethodSpecificOutput']]
            end
            @card_payment_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::CardPaymentMethodSpecificOutput.new_from_hash(hash['cardPaymentMethodSpecificOutput'])
          end
          if hash.has_key?('cashPaymentMethodSpecificOutput')
            if !(hash['cashPaymentMethodSpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['cashPaymentMethodSpecificOutput']]
            end
            @cash_payment_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::CashPaymentMethodSpecificOutput.new_from_hash(hash['cashPaymentMethodSpecificOutput'])
          end
          if hash.has_key?('directDebitPaymentMethodSpecificOutput')
            if !(hash['directDebitPaymentMethodSpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['directDebitPaymentMethodSpecificOutput']]
            end
            @direct_debit_payment_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::NonSepaDirectDebitPaymentMethodSpecificOutput.new_from_hash(hash['directDebitPaymentMethodSpecificOutput'])
          end
          if hash.has_key?('invoicePaymentMethodSpecificOutput')
            if !(hash['invoicePaymentMethodSpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['invoicePaymentMethodSpecificOutput']]
            end
            @invoice_payment_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::InvoicePaymentMethodSpecificOutput.new_from_hash(hash['invoicePaymentMethodSpecificOutput'])
          end
          if hash.has_key?('mobilePaymentMethodSpecificOutput')
            if !(hash['mobilePaymentMethodSpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['mobilePaymentMethodSpecificOutput']]
            end
            @mobile_payment_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::MobilePaymentMethodSpecificOutput.new_from_hash(hash['mobilePaymentMethodSpecificOutput'])
          end
          if hash.has_key?('paymentMethod')
            @payment_method = hash['paymentMethod']
          end
          if hash.has_key?('redirectPaymentMethodSpecificOutput')
            if !(hash['redirectPaymentMethodSpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['redirectPaymentMethodSpecificOutput']]
            end
            @redirect_payment_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentMethodSpecificOutput.new_from_hash(hash['redirectPaymentMethodSpecificOutput'])
          end
          if hash.has_key?('sepaDirectDebitPaymentMethodSpecificOutput')
            if !(hash['sepaDirectDebitPaymentMethodSpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['sepaDirectDebitPaymentMethodSpecificOutput']]
            end
            @sepa_direct_debit_payment_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::SepaDirectDebitPaymentMethodSpecificOutput.new_from_hash(hash['sepaDirectDebitPaymentMethodSpecificOutput'])
          end
        end
      end
    end
  end
end
