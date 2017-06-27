#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class CancelPaymentCardPaymentMethodSpecificOutput < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :void_response_id

        def to_h
          hash = super
          add_to_hash(hash, 'voidResponseId', @void_response_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('voidResponseId')
            @void_response_id = hash['voidResponseId']
          end
        end
      end
    end
  end
end
