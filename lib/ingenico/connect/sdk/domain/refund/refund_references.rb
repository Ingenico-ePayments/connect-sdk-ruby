#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Refund

      class RefundReferences < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :merchant_reference

        def to_h
          hash = super
          add_to_hash(hash, 'merchantReference', @merchant_reference)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('merchantReference')
            @merchant_reference = hash['merchantReference']
          end
        end
      end
    end
  end
end
