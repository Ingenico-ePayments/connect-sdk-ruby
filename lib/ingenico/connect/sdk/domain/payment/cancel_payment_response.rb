#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/cancel_payment_card_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/cancel_payment_mobile_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/payment'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_CancelPaymentResponse CancelPaymentResponse}
      class CancelPaymentResponse < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Payment::CancelPaymentCardPaymentMethodSpecificOutput}
        attr_accessor :card_payment_method_specific_output

        # {Ingenico::Connect::SDK::Domain::Payment::CancelPaymentMobilePaymentMethodSpecificOutput}
        attr_accessor :mobile_payment_method_specific_output

        # {Ingenico::Connect::SDK::Domain::Payment::Payment}
        attr_accessor :payment

        def to_h
          hash = super
          add_to_hash(hash, 'cardPaymentMethodSpecificOutput', @card_payment_method_specific_output)
          add_to_hash(hash, 'mobilePaymentMethodSpecificOutput', @mobile_payment_method_specific_output)
          add_to_hash(hash, 'payment', @payment)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('cardPaymentMethodSpecificOutput')
            if !(hash['cardPaymentMethodSpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['cardPaymentMethodSpecificOutput']]
            end
            @card_payment_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::CancelPaymentCardPaymentMethodSpecificOutput.new_from_hash(hash['cardPaymentMethodSpecificOutput'])
          end
          if hash.has_key?('mobilePaymentMethodSpecificOutput')
            if !(hash['mobilePaymentMethodSpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['mobilePaymentMethodSpecificOutput']]
            end
            @mobile_payment_method_specific_output = Ingenico::Connect::SDK::Domain::Payment::CancelPaymentMobilePaymentMethodSpecificOutput.new_from_hash(hash['mobilePaymentMethodSpecificOutput'])
          end
          if hash.has_key?('payment')
            if !(hash['payment'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['payment']]
            end
            @payment = Ingenico::Connect::SDK::Domain::Payment::Payment.new_from_hash(hash['payment'])
          end
        end
      end
    end
  end
end
