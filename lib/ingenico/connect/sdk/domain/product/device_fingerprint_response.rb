#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      class DeviceFingerprintResponse < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :device_fingerprint_transaction_id

        # String
        attr_accessor :html

        def to_h
          hash = super
          add_to_hash(hash, 'deviceFingerprintTransactionId', @device_fingerprint_transaction_id)
          add_to_hash(hash, 'html', @html)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('deviceFingerprintTransactionId')
            @device_fingerprint_transaction_id = hash['deviceFingerprintTransactionId']
          end
          if hash.has_key?('html')
            @html = hash['html']
          end
        end
      end
    end
  end
end
