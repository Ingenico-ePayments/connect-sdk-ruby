#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] merchant_reference
      class OrderReferencesApprovePayment < Ingenico::Connect::SDK::DataObject

        attr_accessor :merchant_reference

        # @return (Hash)
        def to_h
          hash = super
          hash['merchantReference'] = @merchant_reference unless @merchant_reference.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'merchantReference'
            @merchant_reference = hash['merchantReference']
          end
        end
      end
    end
  end
end
