#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/refund_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/refund_payment_product840_specific_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class RefundEWalletMethodSpecificOutput < Ingenico::Connect::SDK::Domain::Payment::RefundMethodSpecificOutput

        # {Ingenico::Connect::SDK::Domain::Payment::RefundPaymentProduct840SpecificOutput}
        attr_accessor :payment_product840_specific_output

        def to_h
          hash = super
          add_to_hash(hash, 'paymentProduct840SpecificOutput', @payment_product840_specific_output)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('paymentProduct840SpecificOutput')
            if !(hash['paymentProduct840SpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct840SpecificOutput']]
            end
            @payment_product840_specific_output = Ingenico::Connect::SDK::Domain::Payment::RefundPaymentProduct840SpecificOutput.new_from_hash(hash['paymentProduct840SpecificOutput'])
          end
        end
      end
    end
  end
end
