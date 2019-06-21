#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/abstract_cash_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/cash_payment_product1503_specific_input'
require 'ingenico/connect/sdk/domain/payment/cash_payment_product1504_specific_input'
require 'ingenico/connect/sdk/domain/payment/cash_payment_product1521_specific_input'
require 'ingenico/connect/sdk/domain/payment/cash_payment_product1522_specific_input'
require 'ingenico/connect/sdk/domain/payment/cash_payment_product1523_specific_input'
require 'ingenico/connect/sdk/domain/payment/cash_payment_product1524_specific_input'
require 'ingenico/connect/sdk/domain/payment/cash_payment_product1526_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1503SpecificInput] payment_product1503_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1504SpecificInput] payment_product1504_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1521SpecificInput] payment_product1521_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1522SpecificInput] payment_product1522_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1523SpecificInput] payment_product1523_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1524SpecificInput] payment_product1524_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1526SpecificInput] payment_product1526_specific_input
      class CashPaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Payment::AbstractCashPaymentMethodSpecificInput

        #
        # @deprecated No replacement
        attr_accessor :payment_product1503_specific_input

        attr_accessor :payment_product1504_specific_input

        attr_accessor :payment_product1521_specific_input

        attr_accessor :payment_product1522_specific_input

        attr_accessor :payment_product1523_specific_input

        attr_accessor :payment_product1524_specific_input

        attr_accessor :payment_product1526_specific_input

        # @return (Hash)
        def to_h
          hash = super
          hash['paymentProduct1503SpecificInput'] = @payment_product1503_specific_input.to_h unless @payment_product1503_specific_input.nil?
          hash['paymentProduct1504SpecificInput'] = @payment_product1504_specific_input.to_h unless @payment_product1504_specific_input.nil?
          hash['paymentProduct1521SpecificInput'] = @payment_product1521_specific_input.to_h unless @payment_product1521_specific_input.nil?
          hash['paymentProduct1522SpecificInput'] = @payment_product1522_specific_input.to_h unless @payment_product1522_specific_input.nil?
          hash['paymentProduct1523SpecificInput'] = @payment_product1523_specific_input.to_h unless @payment_product1523_specific_input.nil?
          hash['paymentProduct1524SpecificInput'] = @payment_product1524_specific_input.to_h unless @payment_product1524_specific_input.nil?
          hash['paymentProduct1526SpecificInput'] = @payment_product1526_specific_input.to_h unless @payment_product1526_specific_input.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'paymentProduct1503SpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct1503SpecificInput']] unless hash['paymentProduct1503SpecificInput'].is_a? Hash
            @payment_product1503_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1503SpecificInput.new_from_hash(hash['paymentProduct1503SpecificInput'])
          end
          if hash.has_key? 'paymentProduct1504SpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct1504SpecificInput']] unless hash['paymentProduct1504SpecificInput'].is_a? Hash
            @payment_product1504_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1504SpecificInput.new_from_hash(hash['paymentProduct1504SpecificInput'])
          end
          if hash.has_key? 'paymentProduct1521SpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct1521SpecificInput']] unless hash['paymentProduct1521SpecificInput'].is_a? Hash
            @payment_product1521_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1521SpecificInput.new_from_hash(hash['paymentProduct1521SpecificInput'])
          end
          if hash.has_key? 'paymentProduct1522SpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct1522SpecificInput']] unless hash['paymentProduct1522SpecificInput'].is_a? Hash
            @payment_product1522_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1522SpecificInput.new_from_hash(hash['paymentProduct1522SpecificInput'])
          end
          if hash.has_key? 'paymentProduct1523SpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct1523SpecificInput']] unless hash['paymentProduct1523SpecificInput'].is_a? Hash
            @payment_product1523_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1523SpecificInput.new_from_hash(hash['paymentProduct1523SpecificInput'])
          end
          if hash.has_key? 'paymentProduct1524SpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct1524SpecificInput']] unless hash['paymentProduct1524SpecificInput'].is_a? Hash
            @payment_product1524_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1524SpecificInput.new_from_hash(hash['paymentProduct1524SpecificInput'])
          end
          if hash.has_key? 'paymentProduct1526SpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct1526SpecificInput']] unless hash['paymentProduct1526SpecificInput'].is_a? Hash
            @payment_product1526_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1526SpecificInput.new_from_hash(hash['paymentProduct1526SpecificInput'])
          end
        end
      end
    end
  end
end
