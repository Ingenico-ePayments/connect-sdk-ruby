#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] sdk_transaction_id
          class SdkDataOutput < Ingenico::Connect::SDK::DataObject

            attr_accessor :sdk_transaction_id

            # @return (Hash)
            def to_h
              hash = super
              hash['sdkTransactionId'] = @sdk_transaction_id unless @sdk_transaction_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'sdkTransactionId'
                @sdk_transaction_id = hash['sdkTransactionId']
              end
            end
          end
        end
      end
    end
  end
end
