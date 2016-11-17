#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/refund/bank_refund_method_specific_input'
require 'ingenico/connect/sdk/domain/refund/refund_customer'
require 'ingenico/connect/sdk/domain/refund/refund_references'

module Ingenico::Connect::SDK
  module Domain
    module Refund

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_RefundRequest RefundRequest}
      class RefundRequest < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney}
        attr_accessor :amount_of_money

        # {Ingenico::Connect::SDK::Domain::Refund::BankRefundMethodSpecificInput}
        attr_accessor :bank_refund_method_specific_input

        # {Ingenico::Connect::SDK::Domain::Refund::RefundCustomer}
        attr_accessor :customer

        # String
        attr_accessor :refund_date

        # {Ingenico::Connect::SDK::Domain::Refund::RefundReferences}
        attr_accessor :refund_references

        def to_h
          hash = super
          add_to_hash(hash, 'amountOfMoney', @amount_of_money)
          add_to_hash(hash, 'bankRefundMethodSpecificInput', @bank_refund_method_specific_input)
          add_to_hash(hash, 'customer', @customer)
          add_to_hash(hash, 'refundDate', @refund_date)
          add_to_hash(hash, 'refundReferences', @refund_references)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('amountOfMoney')
            if !(hash['amountOfMoney'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']]
            end
            @amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
          end
          if hash.has_key?('bankRefundMethodSpecificInput')
            if !(hash['bankRefundMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['bankRefundMethodSpecificInput']]
            end
            @bank_refund_method_specific_input = Ingenico::Connect::SDK::Domain::Refund::BankRefundMethodSpecificInput.new_from_hash(hash['bankRefundMethodSpecificInput'])
          end
          if hash.has_key?('customer')
            if !(hash['customer'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['customer']]
            end
            @customer = Ingenico::Connect::SDK::Domain::Refund::RefundCustomer.new_from_hash(hash['customer'])
          end
          if hash.has_key?('refundDate')
            @refund_date = hash['refundDate']
          end
          if hash.has_key?('refundReferences')
            if !(hash['refundReferences'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['refundReferences']]
            end
            @refund_references = Ingenico::Connect::SDK::Domain::Refund::RefundReferences.new_from_hash(hash['refundReferences'])
          end
        end
      end
    end
  end
end
