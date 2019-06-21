#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/complete_payment_card_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/merchant'
require 'ingenico/connect/sdk/domain/payment/order'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Ingenico::Connect::SDK::Domain::Payment::CompletePaymentCardPaymentMethodSpecificInput] card_payment_method_specific_input
      # @attr [Ingenico::Connect::SDK::Domain::Payment::Merchant] merchant
      # @attr [Ingenico::Connect::SDK::Domain::Payment::Order] order
      class CompletePaymentRequest < Ingenico::Connect::SDK::DataObject

        attr_accessor :card_payment_method_specific_input

        attr_accessor :merchant

        attr_accessor :order

        # @return (Hash)
        def to_h
          hash = super
          hash['cardPaymentMethodSpecificInput'] = @card_payment_method_specific_input.to_h unless @card_payment_method_specific_input.nil?
          hash['merchant'] = @merchant.to_h unless @merchant.nil?
          hash['order'] = @order.to_h unless @order.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'cardPaymentMethodSpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['cardPaymentMethodSpecificInput']] unless hash['cardPaymentMethodSpecificInput'].is_a? Hash
            @card_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::CompletePaymentCardPaymentMethodSpecificInput.new_from_hash(hash['cardPaymentMethodSpecificInput'])
          end
          if hash.has_key? 'merchant'
            raise TypeError, "value '%s' is not a Hash" % [hash['merchant']] unless hash['merchant'].is_a? Hash
            @merchant = Ingenico::Connect::SDK::Domain::Payment::Merchant.new_from_hash(hash['merchant'])
          end
          if hash.has_key? 'order'
            raise TypeError, "value '%s' is not a Hash" % [hash['order']] unless hash['order'].is_a? Hash
            @order = Ingenico::Connect::SDK::Domain::Payment::Order.new_from_hash(hash['order'])
          end
        end
      end
    end
  end
end
