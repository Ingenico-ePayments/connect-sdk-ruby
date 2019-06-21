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
require 'ingenico/connect/sdk/domain/payment/merchant'
require 'ingenico/connect/sdk/domain/payment/order'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_method_specific_input_base'
require 'ingenico/connect/sdk/domain/payment/sepa_direct_debit_payment_method_specific_input_base'

module Ingenico::Connect::SDK
  module Domain
    module Hostedcheckout

      # @attr [Ingenico::Connect::SDK::Domain::Payment::BankTransferPaymentMethodSpecificInputBase] bank_transfer_payment_method_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Payment::CardPaymentMethodSpecificInputBase] card_payment_method_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Payment::CashPaymentMethodSpecificInputBase] cash_payment_method_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Payment::EInvoicePaymentMethodSpecificInputBase] e_invoice_payment_method_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::FraudFields] fraud_fields
      # @attr [Ingenico::Connect::SDK::Domain::Hostedcheckout::HostedCheckoutSpecificInput] hosted_checkout_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Payment::Merchant] merchant
      # @attr [Ingenico::Connect::SDK::Domain::Hostedcheckout::MobilePaymentMethodSpecificInputHostedCheckout] mobile_payment_method_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Payment::Order] order
      # @attr [Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentMethodSpecificInputBase] redirect_payment_method_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Payment::SepaDirectDebitPaymentMethodSpecificInputBase] sepa_direct_debit_payment_method_specific_input
      class CreateHostedCheckoutRequest < Ingenico::Connect::SDK::DataObject

        attr_accessor :bank_transfer_payment_method_specific_input

        attr_accessor :card_payment_method_specific_input

        attr_accessor :cash_payment_method_specific_input

        attr_accessor :e_invoice_payment_method_specific_input

        attr_accessor :fraud_fields

        attr_accessor :hosted_checkout_specific_input

        attr_accessor :merchant

        attr_accessor :mobile_payment_method_specific_input

        attr_accessor :order

        attr_accessor :redirect_payment_method_specific_input

        attr_accessor :sepa_direct_debit_payment_method_specific_input

        # @return (Hash)
        def to_h
          hash = super
          hash['bankTransferPaymentMethodSpecificInput'] = @bank_transfer_payment_method_specific_input.to_h unless @bank_transfer_payment_method_specific_input.nil?
          hash['cardPaymentMethodSpecificInput'] = @card_payment_method_specific_input.to_h unless @card_payment_method_specific_input.nil?
          hash['cashPaymentMethodSpecificInput'] = @cash_payment_method_specific_input.to_h unless @cash_payment_method_specific_input.nil?
          hash['eInvoicePaymentMethodSpecificInput'] = @e_invoice_payment_method_specific_input.to_h unless @e_invoice_payment_method_specific_input.nil?
          hash['fraudFields'] = @fraud_fields.to_h unless @fraud_fields.nil?
          hash['hostedCheckoutSpecificInput'] = @hosted_checkout_specific_input.to_h unless @hosted_checkout_specific_input.nil?
          hash['merchant'] = @merchant.to_h unless @merchant.nil?
          hash['mobilePaymentMethodSpecificInput'] = @mobile_payment_method_specific_input.to_h unless @mobile_payment_method_specific_input.nil?
          hash['order'] = @order.to_h unless @order.nil?
          hash['redirectPaymentMethodSpecificInput'] = @redirect_payment_method_specific_input.to_h unless @redirect_payment_method_specific_input.nil?
          hash['sepaDirectDebitPaymentMethodSpecificInput'] = @sepa_direct_debit_payment_method_specific_input.to_h unless @sepa_direct_debit_payment_method_specific_input.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'bankTransferPaymentMethodSpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['bankTransferPaymentMethodSpecificInput']] unless hash['bankTransferPaymentMethodSpecificInput'].is_a? Hash
            @bank_transfer_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::BankTransferPaymentMethodSpecificInputBase.new_from_hash(hash['bankTransferPaymentMethodSpecificInput'])
          end
          if hash.has_key? 'cardPaymentMethodSpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['cardPaymentMethodSpecificInput']] unless hash['cardPaymentMethodSpecificInput'].is_a? Hash
            @card_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::CardPaymentMethodSpecificInputBase.new_from_hash(hash['cardPaymentMethodSpecificInput'])
          end
          if hash.has_key? 'cashPaymentMethodSpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['cashPaymentMethodSpecificInput']] unless hash['cashPaymentMethodSpecificInput'].is_a? Hash
            @cash_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentMethodSpecificInputBase.new_from_hash(hash['cashPaymentMethodSpecificInput'])
          end
          if hash.has_key? 'eInvoicePaymentMethodSpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['eInvoicePaymentMethodSpecificInput']] unless hash['eInvoicePaymentMethodSpecificInput'].is_a? Hash
            @e_invoice_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::EInvoicePaymentMethodSpecificInputBase.new_from_hash(hash['eInvoicePaymentMethodSpecificInput'])
          end
          if hash.has_key? 'fraudFields'
            raise TypeError, "value '%s' is not a Hash" % [hash['fraudFields']] unless hash['fraudFields'].is_a? Hash
            @fraud_fields = Ingenico::Connect::SDK::Domain::Definitions::FraudFields.new_from_hash(hash['fraudFields'])
          end
          if hash.has_key? 'hostedCheckoutSpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['hostedCheckoutSpecificInput']] unless hash['hostedCheckoutSpecificInput'].is_a? Hash
            @hosted_checkout_specific_input = Ingenico::Connect::SDK::Domain::Hostedcheckout::HostedCheckoutSpecificInput.new_from_hash(hash['hostedCheckoutSpecificInput'])
          end
          if hash.has_key? 'merchant'
            raise TypeError, "value '%s' is not a Hash" % [hash['merchant']] unless hash['merchant'].is_a? Hash
            @merchant = Ingenico::Connect::SDK::Domain::Payment::Merchant.new_from_hash(hash['merchant'])
          end
          if hash.has_key? 'mobilePaymentMethodSpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['mobilePaymentMethodSpecificInput']] unless hash['mobilePaymentMethodSpecificInput'].is_a? Hash
            @mobile_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Hostedcheckout::MobilePaymentMethodSpecificInputHostedCheckout.new_from_hash(hash['mobilePaymentMethodSpecificInput'])
          end
          if hash.has_key? 'order'
            raise TypeError, "value '%s' is not a Hash" % [hash['order']] unless hash['order'].is_a? Hash
            @order = Ingenico::Connect::SDK::Domain::Payment::Order.new_from_hash(hash['order'])
          end
          if hash.has_key? 'redirectPaymentMethodSpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['redirectPaymentMethodSpecificInput']] unless hash['redirectPaymentMethodSpecificInput'].is_a? Hash
            @redirect_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentMethodSpecificInputBase.new_from_hash(hash['redirectPaymentMethodSpecificInput'])
          end
          if hash.has_key? 'sepaDirectDebitPaymentMethodSpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['sepaDirectDebitPaymentMethodSpecificInput']] unless hash['sepaDirectDebitPaymentMethodSpecificInput'].is_a? Hash
            @sepa_direct_debit_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::SepaDirectDebitPaymentMethodSpecificInputBase.new_from_hash(hash['sepaDirectDebitPaymentMethodSpecificInput'])
          end
        end
      end
    end
  end
end
