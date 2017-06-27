#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class FraudResults < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :fraud_service_result

        def to_h
          hash = super
          add_to_hash(hash, 'fraudServiceResult', @fraud_service_result)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('fraudServiceResult')
            @fraud_service_result = hash['fraudServiceResult']
          end
        end
      end
    end
  end
end
