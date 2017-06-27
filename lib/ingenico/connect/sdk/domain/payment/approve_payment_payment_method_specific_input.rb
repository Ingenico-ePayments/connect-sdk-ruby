#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class ApprovePaymentPaymentMethodSpecificInput < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :date_collect

        # String
        attr_accessor :token

        def to_h
          hash = super
          add_to_hash(hash, 'dateCollect', @date_collect)
          add_to_hash(hash, 'token', @token)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('dateCollect')
            @date_collect = hash['dateCollect']
          end
          if hash.has_key?('token')
            @token = hash['token']
          end
        end
      end
    end
  end
end
