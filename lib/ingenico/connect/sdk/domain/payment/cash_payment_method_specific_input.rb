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

      class CashPaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Payment::AbstractCashPaymentMethodSpecificInput

        # {Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1503SpecificInput}
        #
        # Deprecated; No replacement
        attr_accessor :payment_product1503_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1504SpecificInput}
        attr_accessor :payment_product1504_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1521SpecificInput}
        attr_accessor :payment_product1521_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1522SpecificInput}
        attr_accessor :payment_product1522_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1523SpecificInput}
        attr_accessor :payment_product1523_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1524SpecificInput}
        attr_accessor :payment_product1524_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1526SpecificInput}
        attr_accessor :payment_product1526_specific_input

        def to_h
          hash = super
          add_to_hash(hash, 'paymentProduct1503SpecificInput', @payment_product1503_specific_input)
          add_to_hash(hash, 'paymentProduct1504SpecificInput', @payment_product1504_specific_input)
          add_to_hash(hash, 'paymentProduct1521SpecificInput', @payment_product1521_specific_input)
          add_to_hash(hash, 'paymentProduct1522SpecificInput', @payment_product1522_specific_input)
          add_to_hash(hash, 'paymentProduct1523SpecificInput', @payment_product1523_specific_input)
          add_to_hash(hash, 'paymentProduct1524SpecificInput', @payment_product1524_specific_input)
          add_to_hash(hash, 'paymentProduct1526SpecificInput', @payment_product1526_specific_input)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('paymentProduct1503SpecificInput')
            if !(hash['paymentProduct1503SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct1503SpecificInput']]
            end
            @payment_product1503_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1503SpecificInput.new_from_hash(hash['paymentProduct1503SpecificInput'])
          end
          if hash.has_key?('paymentProduct1504SpecificInput')
            if !(hash['paymentProduct1504SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct1504SpecificInput']]
            end
            @payment_product1504_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1504SpecificInput.new_from_hash(hash['paymentProduct1504SpecificInput'])
          end
          if hash.has_key?('paymentProduct1521SpecificInput')
            if !(hash['paymentProduct1521SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct1521SpecificInput']]
            end
            @payment_product1521_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1521SpecificInput.new_from_hash(hash['paymentProduct1521SpecificInput'])
          end
          if hash.has_key?('paymentProduct1522SpecificInput')
            if !(hash['paymentProduct1522SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct1522SpecificInput']]
            end
            @payment_product1522_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1522SpecificInput.new_from_hash(hash['paymentProduct1522SpecificInput'])
          end
          if hash.has_key?('paymentProduct1523SpecificInput')
            if !(hash['paymentProduct1523SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct1523SpecificInput']]
            end
            @payment_product1523_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1523SpecificInput.new_from_hash(hash['paymentProduct1523SpecificInput'])
          end
          if hash.has_key?('paymentProduct1524SpecificInput')
            if !(hash['paymentProduct1524SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct1524SpecificInput']]
            end
            @payment_product1524_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1524SpecificInput.new_from_hash(hash['paymentProduct1524SpecificInput'])
          end
          if hash.has_key?('paymentProduct1526SpecificInput')
            if !(hash['paymentProduct1526SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct1526SpecificInput']]
            end
            @payment_product1526_specific_input = Ingenico::Connect::SDK::Domain::Payment::CashPaymentProduct1526SpecificInput.new_from_hash(hash['paymentProduct1526SpecificInput'])
          end
        end
      end
    end
  end
end
