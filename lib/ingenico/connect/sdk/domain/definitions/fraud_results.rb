#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [String] fraud_service_result
      class FraudResults < Ingenico::Connect::SDK::DataObject

        attr_accessor :fraud_service_result

        # @return (Hash)
        def to_h
          hash = super
          hash['fraudServiceResult'] = @fraud_service_result unless @fraud_service_result.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'fraudServiceResult'
            @fraud_service_result = hash['fraudServiceResult']
          end
        end
      end
    end
  end
end
