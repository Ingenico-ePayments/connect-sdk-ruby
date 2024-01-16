#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] acs_transaction_id
          # @attr [String] method
          # @attr [String] utc_timestamp
          class ThreeDSecureData < Ingenico::Connect::SDK::DataObject

            attr_accessor :acs_transaction_id

            attr_accessor :method

            attr_accessor :utc_timestamp

            # @return (Hash)
            def to_h
              hash = super
              hash['acsTransactionId'] = @acs_transaction_id unless @acs_transaction_id.nil?
              hash['method'] = @method unless @method.nil?
              hash['utcTimestamp'] = @utc_timestamp unless @utc_timestamp.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'acsTransactionId'
                @acs_transaction_id = hash['acsTransactionId']
              end
              if hash.has_key? 'method'
                @method = hash['method']
              end
              if hash.has_key? 'utcTimestamp'
                @utc_timestamp = hash['utcTimestamp']
              end
            end
          end
        end
      end
    end
  end
end
