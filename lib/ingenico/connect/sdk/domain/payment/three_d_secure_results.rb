#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/sdk_data_output'
require 'ingenico/connect/sdk/domain/payment/three_d_secure_data'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class ThreeDSecureResults < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :cavv

        # String
        attr_accessor :directory_server_transaction_id

        # String
        attr_accessor :eci

        # {Ingenico::Connect::SDK::Domain::Payment::SdkDataOutput}
        attr_accessor :sdk_data

        # {Ingenico::Connect::SDK::Domain::Payment::ThreeDSecureData}
        attr_accessor :three_d_secure_data

        # String
        attr_accessor :three_d_secure_version

        # String
        attr_accessor :three_d_server_transaction_id

        # String
        attr_accessor :xid

        def to_h
          hash = super
          add_to_hash(hash, 'cavv', @cavv)
          add_to_hash(hash, 'directoryServerTransactionId', @directory_server_transaction_id)
          add_to_hash(hash, 'eci', @eci)
          add_to_hash(hash, 'sdkData', @sdk_data)
          add_to_hash(hash, 'threeDSecureData', @three_d_secure_data)
          add_to_hash(hash, 'threeDSecureVersion', @three_d_secure_version)
          add_to_hash(hash, 'threeDServerTransactionId', @three_d_server_transaction_id)
          add_to_hash(hash, 'xid', @xid)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('cavv')
            @cavv = hash['cavv']
          end
          if hash.has_key?('directoryServerTransactionId')
            @directory_server_transaction_id = hash['directoryServerTransactionId']
          end
          if hash.has_key?('eci')
            @eci = hash['eci']
          end
          if hash.has_key?('sdkData')
            if !(hash['sdkData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['sdkData']]
            end
            @sdk_data = Ingenico::Connect::SDK::Domain::Payment::SdkDataOutput.new_from_hash(hash['sdkData'])
          end
          if hash.has_key?('threeDSecureData')
            if !(hash['threeDSecureData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecureData']]
            end
            @three_d_secure_data = Ingenico::Connect::SDK::Domain::Payment::ThreeDSecureData.new_from_hash(hash['threeDSecureData'])
          end
          if hash.has_key?('threeDSecureVersion')
            @three_d_secure_version = hash['threeDSecureVersion']
          end
          if hash.has_key?('threeDServerTransactionId')
            @three_d_server_transaction_id = hash['threeDServerTransactionId']
          end
          if hash.has_key?('xid')
            @xid = hash['xid']
          end
        end
      end
    end
  end
end
