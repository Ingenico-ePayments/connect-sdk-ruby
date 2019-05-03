#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class SdkDataOutput < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :sdk_transaction_id

        def to_h
          hash = super
          add_to_hash(hash, 'sdkTransactionId', @sdk_transaction_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('sdkTransactionId')
            @sdk_transaction_id = hash['sdkTransactionId']
          end
        end
      end
    end
  end
end
