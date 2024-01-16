#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/approve_payment_card_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/approve_payment_mobile_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/payment'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentCardPaymentMethodSpecificOutput] card_payment_method_specific_output
          # @attr [Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentMobilePaymentMethodSpecificOutput] mobile_payment_method_specific_output
          # @attr [Ingenico::Connect::SDK::Domain::Payment::Payment] payment
          # @attr [Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentCardPaymentMethodSpecificOutput] payment_method_specific_output
          class PaymentApprovalResponse < Ingenico::Connect::SDK::DataObject

            attr_accessor :card_payment_method_specific_output

            attr_accessor :mobile_payment_method_specific_output

            attr_accessor :payment

            #
            # @deprecated Use cardPaymentMethodSpecificOutput instead
            attr_accessor :payment_method_specific_output

            # @return (Hash)
            def to_h
              hash = super
              hash['cardPaymentMethodSpecificOutput'] = @card_payment_method_specific_output.to_h unless @card_payment_method_specific_output.nil?
              hash['mobilePaymentMethodSpecificOutput'] = @mobile_payment_method_specific_output.to_h unless @mobile_payment_method_specific_output.nil?
              hash['payment'] = @payment.to_h unless @payment.nil?
              hash['paymentMethodSpecificOutput'] = @payment_method_specific_output.to_h unless @payment_method_specific_output.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'cardPaymentMethodSpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['cardPaymentMethodSpecificOutput']] unless hash['cardPaymentMethodSpecificOutput'].is_a? Hash
                @card_payment_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentCardPaymentMethodSpecificOutput.new_from_hash(hash['cardPaymentMethodSpecificOutput'])
              end
              if hash.has_key? 'mobilePaymentMethodSpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['mobilePaymentMethodSpecificOutput']] unless hash['mobilePaymentMethodSpecificOutput'].is_a? Hash
                @mobile_payment_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentMobilePaymentMethodSpecificOutput.new_from_hash(hash['mobilePaymentMethodSpecificOutput'])
              end
              if hash.has_key? 'payment'
                raise TypeError, "value '%s' is not a Hash" % [hash['payment']] unless hash['payment'].is_a? Hash
                @payment = Ingenico::Connect::SDK::Domain::Payment::Payment.new_from_hash(hash['payment'])
              end
              if hash.has_key? 'paymentMethodSpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentMethodSpecificOutput']] unless hash['paymentMethodSpecificOutput'].is_a? Hash
                @payment_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentCardPaymentMethodSpecificOutput.new_from_hash(hash['paymentMethodSpecificOutput'])
              end
            end
          end
        end
      end
    end
  end
end
