#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/key_value_pair'

module Ingenico::Connect::SDK
  module Domain
    module Product

      class AccountOnFileAttribute < Ingenico::Connect::SDK::Domain::Definitions::KeyValuePair

        # String
        attr_accessor :must_write_reason

        # String
        attr_accessor :status

        def to_h
          hash = super
          add_to_hash(hash, 'mustWriteReason', @must_write_reason)
          add_to_hash(hash, 'status', @status)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('mustWriteReason')
            @must_write_reason = hash['mustWriteReason']
          end
          if hash.has_key?('status')
            @status = hash['status']
          end
        end
      end
    end
  end
end
