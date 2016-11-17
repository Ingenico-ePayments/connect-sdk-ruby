#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/domain/payment/order_output'
require 'ingenico/connect/sdk/domain/payment/refund_bank_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/refund_card_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/refund_e_wallet_method_specific_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_RefundOutput RefundOutput}
      class RefundOutput < Ingenico::Connect::SDK::Domain::Payment::OrderOutput

        # Integer
        attr_accessor :amount_paid

        # {Ingenico::Connect::SDK::Domain::Payment::RefundBankMethodSpecificOutput}
        attr_accessor :bank_refund_method_specific_output

        # {Ingenico::Connect::SDK::Domain::Payment::RefundCardMethodSpecificOutput}
        attr_accessor :card_refund_method_specific_output

        # {Ingenico::Connect::SDK::Domain::Payment::RefundEWalletMethodSpecificOutput}
        attr_accessor :e_wallet_refund_method_specific_output

        # String
        attr_accessor :payment_method

        def to_h
          hash = super
          add_to_hash(hash, 'amountPaid', @amount_paid)
          add_to_hash(hash, 'bankRefundMethodSpecificOutput', @bank_refund_method_specific_output)
          add_to_hash(hash, 'cardRefundMethodSpecificOutput', @card_refund_method_specific_output)
          add_to_hash(hash, 'eWalletRefundMethodSpecificOutput', @e_wallet_refund_method_specific_output)
          add_to_hash(hash, 'paymentMethod', @payment_method)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('amountPaid')
            @amount_paid = hash['amountPaid']
          end
          if hash.has_key?('bankRefundMethodSpecificOutput')
            if !(hash['bankRefundMethodSpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['bankRefundMethodSpecificOutput']]
            end
            @bank_refund_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::RefundBankMethodSpecificOutput.new_from_hash(hash['bankRefundMethodSpecificOutput'])
          end
          if hash.has_key?('cardRefundMethodSpecificOutput')
            if !(hash['cardRefundMethodSpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['cardRefundMethodSpecificOutput']]
            end
            @card_refund_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::RefundCardMethodSpecificOutput.new_from_hash(hash['cardRefundMethodSpecificOutput'])
          end
          if hash.has_key?('eWalletRefundMethodSpecificOutput')
            if !(hash['eWalletRefundMethodSpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['eWalletRefundMethodSpecificOutput']]
            end
            @e_wallet_refund_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::RefundEWalletMethodSpecificOutput.new_from_hash(hash['eWalletRefundMethodSpecificOutput'])
          end
          if hash.has_key?('paymentMethod')
            @payment_method = hash['paymentMethod']
          end
        end
      end
    end
  end
end
