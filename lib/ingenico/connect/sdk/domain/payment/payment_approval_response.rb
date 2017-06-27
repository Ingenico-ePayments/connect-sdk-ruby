#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/approve_payment_card_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/approve_payment_mobile_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/payment'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class PaymentApprovalResponse < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentCardPaymentMethodSpecificOutput}
        attr_accessor :card_payment_method_specific_output

        # {Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentMobilePaymentMethodSpecificOutput}
        attr_accessor :mobile_payment_method_specific_output

        # {Ingenico::Connect::SDK::Domain::Payment::Payment}
        attr_accessor :payment

        # {Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentCardPaymentMethodSpecificOutput}
        #
        # Deprecated; Use cardPaymentMethodSpecificOutput instead
        attr_accessor :payment_method_specific_output

        def to_h
          hash = super
          add_to_hash(hash, 'cardPaymentMethodSpecificOutput', @card_payment_method_specific_output)
          add_to_hash(hash, 'mobilePaymentMethodSpecificOutput', @mobile_payment_method_specific_output)
          add_to_hash(hash, 'payment', @payment)
          add_to_hash(hash, 'paymentMethodSpecificOutput', @payment_method_specific_output)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('cardPaymentMethodSpecificOutput')
            if !(hash['cardPaymentMethodSpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['cardPaymentMethodSpecificOutput']]
            end
            @card_payment_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentCardPaymentMethodSpecificOutput.new_from_hash(hash['cardPaymentMethodSpecificOutput'])
          end
          if hash.has_key?('mobilePaymentMethodSpecificOutput')
            if !(hash['mobilePaymentMethodSpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['mobilePaymentMethodSpecificOutput']]
            end
            @mobile_payment_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentMobilePaymentMethodSpecificOutput.new_from_hash(hash['mobilePaymentMethodSpecificOutput'])
          end
          if hash.has_key?('payment')
            if !(hash['payment'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['payment']]
            end
            @payment = Ingenico::Connect::SDK::Domain::Payment::Payment.new_from_hash(hash['payment'])
          end
          if hash.has_key?('paymentMethodSpecificOutput')
            if !(hash['paymentMethodSpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentMethodSpecificOutput']]
            end
            @payment_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentCardPaymentMethodSpecificOutput.new_from_hash(hash['paymentMethodSpecificOutput'])
          end
        end
      end
    end
  end
end
