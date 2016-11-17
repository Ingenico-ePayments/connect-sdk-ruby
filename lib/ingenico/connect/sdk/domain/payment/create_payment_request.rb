#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/fraud_fields'
require 'ingenico/connect/sdk/domain/payment/bank_transfer_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/card_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/cash_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/invoice_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/non_sepa_direct_debit_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/order'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/sepa_direct_debit_payment_method_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_CreatePaymentRequest CreatePaymentRequest}
      class CreatePaymentRequest < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Payment::BankTransferPaymentMethodSpecificInput}
        attr_accessor :bank_transfer_payment_method_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::CardPaymentMethodSpecificInput}
        attr_accessor :card_payment_method_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::CashPaymentMethodSpecificInput}
        attr_accessor :cash_payment_method_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::NonSepaDirectDebitPaymentMethodSpecificInput}
        attr_accessor :direct_debit_payment_method_specific_input

        # String
        attr_accessor :encrypted_customer_input

        # {Ingenico::Connect::SDK::Domain::Definitions::FraudFields}
        attr_accessor :fraud_fields

        # {Ingenico::Connect::SDK::Domain::Payment::InvoicePaymentMethodSpecificInput}
        attr_accessor :invoice_payment_method_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::Order}
        attr_accessor :order

        # {Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentMethodSpecificInput}
        attr_accessor :redirect_payment_method_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::SepaDirectDebitPaymentMethodSpecificInput}
        attr_accessor :sepa_direct_debit_payment_method_specific_input

        def to_h
          hash = super
          add_to_hash(hash, 'bankTransferPaymentMethodSpecificInput', @bank_transfer_payment_method_specific_input)
          add_to_hash(hash, 'cardPaymentMethodSpecificInput', @card_payment_method_specific_input)
          add_to_hash(hash, 'cashPaymentMethodSpecificInput', @cash_payment_method_specific_input)
          add_to_hash(hash, 'directDebitPaymentMethodSpecificInput', @direct_debit_payment_method_specific_input)
          add_to_hash(hash, 'encryptedCustomerInput', @encrypted_customer_input)
          add_to_hash(hash, 'fraudFields', @fraud_fields)
          add_to_hash(hash, 'invoicePaymentMethodSpecificInput', @invoice_payment_method_specific_input)
          add_to_hash(hash, 'order', @order)
          add_to_hash(hash, 'redirectPaymentMethodSpecificInput', @redirect_payment_method_specific_input)
          add_to_hash(hash, 'sepaDirectDebitPaymentMethodSpecificInput', @sepa_direct_debit_payment_method_specific_input)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('bankTransferPaymentMethodSpecificInput')
            if !(hash['bankTransferPaymentMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['bankTransferPaymentMethodSpecificInput']]
            end
            @bank_transfer_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::BankTransferPaymentMethodSpecificInput.new_from_hash(hash['bankTransferPaymentMethodSpecificInput'])
          end
          if hash.has_key?('cardPaymentMethodSpecificInput')
            if !(hash['cardPaymentMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['cardPaymentMethodSpecificInput']]
            end
            @card_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::CardPaymentMethodSpecificInput.new_from_hash(hash['cardPaymentMethodSpecificInput'])
          end
          if hash.has_key?('cashPaymentMethodSpecificInput')
            if !(hash['cashPaymentMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['cashPaymentMethodSpecificInput']]
            end
            @cash_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentMethodSpecificInput.new_from_hash(hash['cashPaymentMethodSpecificInput'])
          end
          if hash.has_key?('directDebitPaymentMethodSpecificInput')
            if !(hash['directDebitPaymentMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['directDebitPaymentMethodSpecificInput']]
            end
            @direct_debit_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::NonSepaDirectDebitPaymentMethodSpecificInput.new_from_hash(hash['directDebitPaymentMethodSpecificInput'])
          end
          if hash.has_key?('encryptedCustomerInput')
            @encrypted_customer_input = hash['encryptedCustomerInput']
          end
          if hash.has_key?('fraudFields')
            if !(hash['fraudFields'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['fraudFields']]
            end
            @fraud_fields = Ingenico::Connect::SDK::Domain::Definitions::FraudFields.new_from_hash(hash['fraudFields'])
          end
          if hash.has_key?('invoicePaymentMethodSpecificInput')
            if !(hash['invoicePaymentMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['invoicePaymentMethodSpecificInput']]
            end
            @invoice_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::InvoicePaymentMethodSpecificInput.new_from_hash(hash['invoicePaymentMethodSpecificInput'])
          end
          if hash.has_key?('order')
            if !(hash['order'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['order']]
            end
            @order = Ingenico::Connect::SDK::Domain::Payment::Order.new_from_hash(hash['order'])
          end
          if hash.has_key?('redirectPaymentMethodSpecificInput')
            if !(hash['redirectPaymentMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['redirectPaymentMethodSpecificInput']]
            end
            @redirect_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentMethodSpecificInput.new_from_hash(hash['redirectPaymentMethodSpecificInput'])
          end
          if hash.has_key?('sepaDirectDebitPaymentMethodSpecificInput')
            if !(hash['sepaDirectDebitPaymentMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['sepaDirectDebitPaymentMethodSpecificInput']]
            end
            @sepa_direct_debit_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::SepaDirectDebitPaymentMethodSpecificInput.new_from_hash(hash['sepaDirectDebitPaymentMethodSpecificInput'])
          end
        end
      end
    end
  end
end
