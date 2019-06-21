#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/key_value_pair'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # @attr [String] must_write_reason
      # @attr [String] status
      class AccountOnFileAttribute < Ingenico::Connect::SDK::Domain::Definitions::KeyValuePair

        attr_accessor :must_write_reason

        attr_accessor :status

        # @return (Hash)
        def to_h
          hash = super
          hash['mustWriteReason'] = @must_write_reason unless @must_write_reason.nil?
          hash['status'] = @status unless @status.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'mustWriteReason'
            @must_write_reason = hash['mustWriteReason']
          end
          if hash.has_key? 'status'
            @status = hash['status']
          end
        end
      end
    end
  end
end
