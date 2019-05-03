#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class MobileThreeDSecureChallengeParameters < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :acs_reference_number

        # String
        attr_accessor :acs_signed_content

        # String
        attr_accessor :acs_transaction_id

        # String
        attr_accessor :three_d_server_transaction_id

        def to_h
          hash = super
          add_to_hash(hash, 'acsReferenceNumber', @acs_reference_number)
          add_to_hash(hash, 'acsSignedContent', @acs_signed_content)
          add_to_hash(hash, 'acsTransactionId', @acs_transaction_id)
          add_to_hash(hash, 'threeDServerTransactionId', @three_d_server_transaction_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('acsReferenceNumber')
            @acs_reference_number = hash['acsReferenceNumber']
          end
          if hash.has_key?('acsSignedContent')
            @acs_signed_content = hash['acsSignedContent']
          end
          if hash.has_key?('acsTransactionId')
            @acs_transaction_id = hash['acsTransactionId']
          end
          if hash.has_key?('threeDServerTransactionId')
            @three_d_server_transaction_id = hash['threeDServerTransactionId']
          end
        end
      end
    end
  end
end
