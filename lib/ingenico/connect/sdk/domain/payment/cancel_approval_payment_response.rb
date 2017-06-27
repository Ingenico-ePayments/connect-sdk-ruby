#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/payment'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class CancelApprovalPaymentResponse < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Payment::Payment}
        attr_accessor :payment

        def to_h
          hash = super
          add_to_hash(hash, 'payment', @payment)
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
        end
      end
    end
  end
end
