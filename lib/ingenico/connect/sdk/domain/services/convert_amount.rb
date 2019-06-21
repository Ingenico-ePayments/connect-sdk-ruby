#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Services

      # @attr [Integer] converted_amount
      class ConvertAmount < Ingenico::Connect::SDK::DataObject

        attr_accessor :converted_amount

        # @return (Hash)
        def to_h
          hash = super
          hash['convertedAmount'] = @converted_amount unless @converted_amount.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'convertedAmount'
            @converted_amount = hash['convertedAmount']
          end
        end
      end
    end
  end
end
