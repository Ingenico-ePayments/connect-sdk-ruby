#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_ApprovePaymentCardPaymentMethodSpecificOutput ApprovePaymentCardPaymentMethodSpecificOutput}
      class ApprovePaymentCardPaymentMethodSpecificOutput < Ingenico::Connect::SDK::DataObject

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
