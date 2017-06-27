#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class CapturePaymentRequest < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :amount

        # true/false
        attr_accessor :is_final

        def to_h
          hash = super
          add_to_hash(hash, 'amount', @amount)
          add_to_hash(hash, 'isFinal', @is_final)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('amount')
            @amount = hash['amount']
          end
          if hash.has_key?('isFinal')
            @is_final = hash['isFinal']
          end
        end
      end
    end
  end
end
