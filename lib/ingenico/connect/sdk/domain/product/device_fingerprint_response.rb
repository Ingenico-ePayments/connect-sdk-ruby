#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Product
          # @attr [String] device_fingerprint_transaction_id
          # @attr [String] html
          class DeviceFingerprintResponse < Ingenico::Connect::SDK::DataObject

            attr_accessor :device_fingerprint_transaction_id

            attr_accessor :html

            # @return (Hash)
            def to_h
              hash = super
              hash['deviceFingerprintTransactionId'] = @device_fingerprint_transaction_id unless @device_fingerprint_transaction_id.nil?
              hash['html'] = @html unless @html.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'deviceFingerprintTransactionId'
                @device_fingerprint_transaction_id = hash['deviceFingerprintTransactionId']
              end
              if hash.has_key? 'html'
                @html = hash['html']
              end
            end
          end
        end
      end
    end
  end
end
