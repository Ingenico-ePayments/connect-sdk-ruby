#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/order_output'
require 'ingenico/connect/sdk/domain/payment/refund_bank_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/refund_card_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/refund_e_invoice_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/refund_e_wallet_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/refund_mobile_method_specific_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Integer] amount_paid
      # @attr [Ingenico::Connect::SDK::Domain::Payment::RefundBankMethodSpecificOutput] bank_refund_method_specific_output
      # @attr [Ingenico::Connect::SDK::Domain::Payment::RefundCardMethodSpecificOutput] card_refund_method_specific_output
      # @attr [Ingenico::Connect::SDK::Domain::Payment::RefundEInvoiceMethodSpecificOutput] e_invoice_refund_method_specific_output
      # @attr [Ingenico::Connect::SDK::Domain::Payment::RefundEWalletMethodSpecificOutput] e_wallet_refund_method_specific_output
      # @attr [Ingenico::Connect::SDK::Domain::Payment::RefundMobileMethodSpecificOutput] mobile_refund_method_specific_output
      # @attr [String] payment_method
      class RefundOutput < Ingenico::Connect::SDK::Domain::Payment::OrderOutput

        attr_accessor :amount_paid

        attr_accessor :bank_refund_method_specific_output

        attr_accessor :card_refund_method_specific_output

        attr_accessor :e_invoice_refund_method_specific_output

        attr_accessor :e_wallet_refund_method_specific_output

        attr_accessor :mobile_refund_method_specific_output

        attr_accessor :payment_method

        # @return (Hash)
        def to_h
          hash = super
          hash['amountPaid'] = @amount_paid unless @amount_paid.nil?
          hash['bankRefundMethodSpecificOutput'] = @bank_refund_method_specific_output.to_h unless @bank_refund_method_specific_output.nil?
          hash['cardRefundMethodSpecificOutput'] = @card_refund_method_specific_output.to_h unless @card_refund_method_specific_output.nil?
          hash['eInvoiceRefundMethodSpecificOutput'] = @e_invoice_refund_method_specific_output.to_h unless @e_invoice_refund_method_specific_output.nil?
          hash['eWalletRefundMethodSpecificOutput'] = @e_wallet_refund_method_specific_output.to_h unless @e_wallet_refund_method_specific_output.nil?
          hash['mobileRefundMethodSpecificOutput'] = @mobile_refund_method_specific_output.to_h unless @mobile_refund_method_specific_output.nil?
          hash['paymentMethod'] = @payment_method unless @payment_method.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'amountPaid'
            @amount_paid = hash['amountPaid']
          end
          if hash.has_key? 'bankRefundMethodSpecificOutput'
            raise TypeError, "value '%s' is not a Hash" % [hash['bankRefundMethodSpecificOutput']] unless hash['bankRefundMethodSpecificOutput'].is_a? Hash
            @bank_refund_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::RefundBankMethodSpecificOutput.new_from_hash(hash['bankRefundMethodSpecificOutput'])
          end
          if hash.has_key? 'cardRefundMethodSpecificOutput'
            raise TypeError, "value '%s' is not a Hash" % [hash['cardRefundMethodSpecificOutput']] unless hash['cardRefundMethodSpecificOutput'].is_a? Hash
            @card_refund_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::RefundCardMethodSpecificOutput.new_from_hash(hash['cardRefundMethodSpecificOutput'])
          end
          if hash.has_key? 'eInvoiceRefundMethodSpecificOutput'
            raise TypeError, "value '%s' is not a Hash" % [hash['eInvoiceRefundMethodSpecificOutput']] unless hash['eInvoiceRefundMethodSpecificOutput'].is_a? Hash
            @e_invoice_refund_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::RefundEInvoiceMethodSpecificOutput.new_from_hash(hash['eInvoiceRefundMethodSpecificOutput'])
          end
          if hash.has_key? 'eWalletRefundMethodSpecificOutput'
            raise TypeError, "value '%s' is not a Hash" % [hash['eWalletRefundMethodSpecificOutput']] unless hash['eWalletRefundMethodSpecificOutput'].is_a? Hash
            @e_wallet_refund_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::RefundEWalletMethodSpecificOutput.new_from_hash(hash['eWalletRefundMethodSpecificOutput'])
          end
          if hash.has_key? 'mobileRefundMethodSpecificOutput'
            raise TypeError, "value '%s' is not a Hash" % [hash['mobileRefundMethodSpecificOutput']] unless hash['mobileRefundMethodSpecificOutput'].is_a? Hash
            @mobile_refund_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::RefundMobileMethodSpecificOutput.new_from_hash(hash['mobileRefundMethodSpecificOutput'])
          end
          if hash.has_key? 'paymentMethod'
            @payment_method = hash['paymentMethod']
          end
        end
      end
    end
  end
end
