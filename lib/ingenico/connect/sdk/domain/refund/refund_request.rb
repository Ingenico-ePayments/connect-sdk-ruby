#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/refund/bank_refund_method_specific_input'
require 'ingenico/connect/sdk/domain/refund/refund_customer'
require 'ingenico/connect/sdk/domain/refund/refund_references'

module Ingenico::Connect::SDK
  module Domain
    module Refund

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney] amount_of_money
      # @attr [Ingenico::Connect::SDK::Domain::Refund::BankRefundMethodSpecificInput] bank_refund_method_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Refund::RefundCustomer] customer
      # @attr [String] refund_date
      # @attr [Ingenico::Connect::SDK::Domain::Refund::RefundReferences] refund_references
      class RefundRequest < Ingenico::Connect::SDK::DataObject

        attr_accessor :amount_of_money

        attr_accessor :bank_refund_method_specific_input

        attr_accessor :customer

        attr_accessor :refund_date

        attr_accessor :refund_references

        # @return (Hash)
        def to_h
          hash = super
          hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
          hash['bankRefundMethodSpecificInput'] = @bank_refund_method_specific_input.to_h unless @bank_refund_method_specific_input.nil?
          hash['customer'] = @customer.to_h unless @customer.nil?
          hash['refundDate'] = @refund_date unless @refund_date.nil?
          hash['refundReferences'] = @refund_references.to_h unless @refund_references.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'amountOfMoney'
            raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
            @amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
          end
          if hash.has_key? 'bankRefundMethodSpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['bankRefundMethodSpecificInput']] unless hash['bankRefundMethodSpecificInput'].is_a? Hash
            @bank_refund_method_specific_input = Ingenico::Connect::SDK::Domain::Refund::BankRefundMethodSpecificInput.new_from_hash(hash['bankRefundMethodSpecificInput'])
          end
          if hash.has_key? 'customer'
            raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
            @customer = Ingenico::Connect::SDK::Domain::Refund::RefundCustomer.new_from_hash(hash['customer'])
          end
          if hash.has_key? 'refundDate'
            @refund_date = hash['refundDate']
          end
          if hash.has_key? 'refundReferences'
            raise TypeError, "value '%s' is not a Hash" % [hash['refundReferences']] unless hash['refundReferences'].is_a? Hash
            @refund_references = Ingenico::Connect::SDK::Domain::Refund::RefundReferences.new_from_hash(hash['refundReferences'])
          end
        end
      end
    end
  end
end
