#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/abstract_redirect_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_product809_specific_input'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_product816_specific_input'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_product840_specific_input'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_product863_specific_input'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_product882_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class RedirectPaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Payment::AbstractRedirectPaymentMethodSpecificInput

        # true/false
        attr_accessor :is_recurring

        # {Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct809SpecificInput}
        attr_accessor :payment_product809_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct816SpecificInput}
        attr_accessor :payment_product816_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct840SpecificInput}
        attr_accessor :payment_product840_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct863SpecificInput}
        attr_accessor :payment_product863_specific_input

        # {Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct882SpecificInput}
        attr_accessor :payment_product882_specific_input

        # String
        attr_accessor :return_url

        def to_h
          hash = super
          add_to_hash(hash, 'isRecurring', @is_recurring)
          add_to_hash(hash, 'paymentProduct809SpecificInput', @payment_product809_specific_input)
          add_to_hash(hash, 'paymentProduct816SpecificInput', @payment_product816_specific_input)
          add_to_hash(hash, 'paymentProduct840SpecificInput', @payment_product840_specific_input)
          add_to_hash(hash, 'paymentProduct863SpecificInput', @payment_product863_specific_input)
          add_to_hash(hash, 'paymentProduct882SpecificInput', @payment_product882_specific_input)
          add_to_hash(hash, 'returnUrl', @return_url)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('isRecurring')
            @is_recurring = hash['isRecurring']
          end
          if hash.has_key?('paymentProduct809SpecificInput')
            if !(hash['paymentProduct809SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct809SpecificInput']]
            end
            @payment_product809_specific_input = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct809SpecificInput.new_from_hash(hash['paymentProduct809SpecificInput'])
          end
          if hash.has_key?('paymentProduct816SpecificInput')
            if !(hash['paymentProduct816SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct816SpecificInput']]
            end
            @payment_product816_specific_input = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct816SpecificInput.new_from_hash(hash['paymentProduct816SpecificInput'])
          end
          if hash.has_key?('paymentProduct840SpecificInput')
            if !(hash['paymentProduct840SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct840SpecificInput']]
            end
            @payment_product840_specific_input = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct840SpecificInput.new_from_hash(hash['paymentProduct840SpecificInput'])
          end
          if hash.has_key?('paymentProduct863SpecificInput')
            if !(hash['paymentProduct863SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct863SpecificInput']]
            end
            @payment_product863_specific_input = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct863SpecificInput.new_from_hash(hash['paymentProduct863SpecificInput'])
          end
          if hash.has_key?('paymentProduct882SpecificInput')
            if !(hash['paymentProduct882SpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct882SpecificInput']]
            end
            @payment_product882_specific_input = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct882SpecificInput.new_from_hash(hash['paymentProduct882SpecificInput'])
          end
          if hash.has_key?('returnUrl')
            @return_url = hash['returnUrl']
          end
        end
      end
    end
  end
end
