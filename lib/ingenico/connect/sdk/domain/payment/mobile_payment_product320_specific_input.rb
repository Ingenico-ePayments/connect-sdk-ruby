#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class MobilePaymentProduct320SpecificInput < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :key_id

        def to_h
          hash = super
          add_to_hash(hash, 'keyId', @key_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('keyId')
            @key_id = hash['keyId']
          end
        end
      end
    end
  end
end
