#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/approve_payment_card_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/payment'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PaymentApprovalResponse PaymentApprovalResponse}
      class PaymentApprovalResponse < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Payment::Payment}
        attr_accessor :payment

        # {Ingenico::Connect::SDK::Domain::Payment::ApprovePaymentCardPaymentMethodSpecificOutput}
        attr_accessor :payment_method_specific_output

        def to_h
          hash = super
          add_to_hash(hash, 'payment', @payment)
          add_to_hash(hash, 'paymentMethodSpecificOutput', @payment_method_specific_output)
          hash
        end

        def from_hash(hash)
          super
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
