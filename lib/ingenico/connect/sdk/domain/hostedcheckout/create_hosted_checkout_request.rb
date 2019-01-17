#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/fraud_fields'
require 'ingenico/connect/sdk/domain/hostedcheckout/hosted_checkout_specific_input'
require 'ingenico/connect/sdk/domain/hostedcheckout/mobile_payment_method_specific_input_hosted_checkout'
require 'ingenico/connect/sdk/domain/payment/bank_transfer_payment_method_specific_input_base'
require 'ingenico/connect/sdk/domain/payment/card_payment_method_specific_input_base'
require 'ingenico/connect/sdk/domain/payment/cash_payment_method_specific_input_base'
require 'ingenico/connect/sdk/domain/payment/e_invoice_payment_method_specific_input_base'
require 'ingenico/connect/sdk/domain/payment/order'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_method_specific_input_base'
require 'ingenico/connect/sdk/domain/payment/sepa_direct_debit_payment_method_specific_input_base'

module Ingenico::Connect::SDK
  module Domain
    module Hostedcheckout

      class CreateHostedCheckoutRequest < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Payment::BankTransferPaymentMethodSpecificInputBase}
        attr_accessor :bank_transfer_payment_method_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::CardPaymentMethodSpecificInputBase}
        attr_accessor :card_payment_method_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::CashPaymentMethodSpecificInputBase}
        attr_accessor :cash_payment_method_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::EInvoicePaymentMethodSpecificInputBase}
        attr_accessor :e_invoice_payment_method_specific_input

        # {Ingenico::Connect::SDK::Domain::Definitions::FraudFields}
        attr_accessor :fraud_fields

        # {Ingenico::Connect::SDK::Domain::Hostedcheckout::HostedCheckoutSpecificInput}
        attr_accessor :hosted_checkout_specific_input

        # {Ingenico::Connect::SDK::Domain::Hostedcheckout::MobilePaymentMethodSpecificInputHostedCheckout}
        attr_accessor :mobile_payment_method_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::Order}
        attr_accessor :order

        # {Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentMethodSpecificInputBase}
        attr_accessor :redirect_payment_method_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::SepaDirectDebitPaymentMethodSpecificInputBase}
        attr_accessor :sepa_direct_debit_payment_method_specific_input

        def to_h
          hash = super
          add_to_hash(hash, 'bankTransferPaymentMethodSpecificInput', @bank_transfer_payment_method_specific_input)
          add_to_hash(hash, 'cardPaymentMethodSpecificInput', @card_payment_method_specific_input)
          add_to_hash(hash, 'cashPaymentMethodSpecificInput', @cash_payment_method_specific_input)
          add_to_hash(hash, 'eInvoicePaymentMethodSpecificInput', @e_invoice_payment_method_specific_input)
          add_to_hash(hash, 'fraudFields', @fraud_fields)
          add_to_hash(hash, 'hostedCheckoutSpecificInput', @hosted_checkout_specific_input)
          add_to_hash(hash, 'mobilePaymentMethodSpecificInput', @mobile_payment_method_specific_input)
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
            @bank_transfer_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::BankTransferPaymentMethodSpecificInputBase.new_from_hash(hash['bankTransferPaymentMethodSpecificInput'])
          end
          if hash.has_key?('cardPaymentMethodSpecificInput')
            if !(hash['cardPaymentMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['cardPaymentMethodSpecificInput']]
            end
            @card_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::CardPaymentMethodSpecificInputBase.new_from_hash(hash['cardPaymentMethodSpecificInput'])
          end
          if hash.has_key?('cashPaymentMethodSpecificInput')
            if !(hash['cashPaymentMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['cashPaymentMethodSpecificInput']]
            end
            @cash_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentMethodSpecificInputBase.new_from_hash(hash['cashPaymentMethodSpecificInput'])
          end
          if hash.has_key?('eInvoicePaymentMethodSpecificInput')
            if !(hash['eInvoicePaymentMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['eInvoicePaymentMethodSpecificInput']]
            end
            @e_invoice_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::EInvoicePaymentMethodSpecificInputBase.new_from_hash(hash['eInvoicePaymentMethodSpecificInput'])
          end
          if hash.has_key?('fraudFields')
            if !(hash['fraudFields'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['fraudFields']]
            end
            @fraud_fields = Ingenico::Connect::SDK::Domain::Definitions::FraudFields.new_from_hash(hash['fraudFields'])
          end
          if hash.has_key?('hostedCheckoutSpecificInput')
            if !(hash['hostedCheckoutSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['hostedCheckoutSpecificInput']]
            end
            @hosted_checkout_specific_input = Ingenico::Connect::SDK::Domain::Hostedcheckout::HostedCheckoutSpecificInput.new_from_hash(hash['hostedCheckoutSpecificInput'])
          end
          if hash.has_key?('mobilePaymentMethodSpecificInput')
            if !(hash['mobilePaymentMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['mobilePaymentMethodSpecificInput']]
            end
            @mobile_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Hostedcheckout::MobilePaymentMethodSpecificInputHostedCheckout.new_from_hash(hash['mobilePaymentMethodSpecificInput'])
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
            @redirect_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentMethodSpecificInputBase.new_from_hash(hash['redirectPaymentMethodSpecificInput'])
          end
          if hash.has_key?('sepaDirectDebitPaymentMethodSpecificInput')
            if !(hash['sepaDirectDebitPaymentMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['sepaDirectDebitPaymentMethodSpecificInput']]
            end
            @sepa_direct_debit_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::SepaDirectDebitPaymentMethodSpecificInputBase.new_from_hash(hash['sepaDirectDebitPaymentMethodSpecificInput'])
          end
        end
      end
    end
  end
end
