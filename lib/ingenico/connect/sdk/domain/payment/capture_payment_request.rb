#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Integer] amount
      # @attr [true/false] is_final
      class CapturePaymentRequest < Ingenico::Connect::SDK::DataObject

        attr_accessor :amount

        attr_accessor :is_final

        # @return (Hash)
        def to_h
          hash = super
          hash['amount'] = @amount unless @amount.nil?
          hash['isFinal'] = @is_final unless @is_final.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'amount'
            @amount = hash['amount']
          end
          if hash.has_key? 'isFinal'
            @is_final = hash['isFinal']
          end
        end
      end
    end
  end
end
