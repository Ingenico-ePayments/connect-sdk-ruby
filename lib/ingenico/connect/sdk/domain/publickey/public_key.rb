#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Publickey

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PublicKey PublicKey}
      class PublicKey < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :key_id

        # String
        attr_accessor :public_key

        def to_h
          hash = super
          add_to_hash(hash, 'keyId', @key_id)
          add_to_hash(hash, 'publicKey', @public_key)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('keyId')
            @key_id = hash['keyId']
          end
          if hash.has_key?('publicKey')
            @public_key = hash['publicKey']
          end
        end
      end
    end
  end
end
