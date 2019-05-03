#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class OrderTypeInformation < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :purchase_type

        # String
        attr_accessor :transaction_type

        # String
        attr_accessor :usage_type

        def to_h
          hash = super
          add_to_hash(hash, 'purchaseType', @purchase_type)
          add_to_hash(hash, 'transactionType', @transaction_type)
          add_to_hash(hash, 'usageType', @usage_type)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('purchaseType')
            @purchase_type = hash['purchaseType']
          end
          if hash.has_key?('transactionType')
            @transaction_type = hash['transactionType']
          end
          if hash.has_key?('usageType')
            @usage_type = hash['usageType']
          end
        end
      end
    end
  end
end
