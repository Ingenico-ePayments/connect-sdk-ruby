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

      # @attr [String] cavv
      # @attr [String] directory_server_transaction_id
      # @attr [String] eci
      # @attr [Ingenico::Connect::SDK::Domain::Payment::SdkDataOutput] sdk_data
      # @attr [Ingenico::Connect::SDK::Domain::Payment::ThreeDSecureData] three_d_secure_data
      # @attr [String] three_d_secure_version
      # @attr [String] three_d_server_transaction_id
      # @attr [String] xid
      class ThreeDSecureResults < Ingenico::Connect::SDK::DataObject

        attr_accessor :cavv

        attr_accessor :directory_server_transaction_id

        attr_accessor :eci

        attr_accessor :sdk_data

        attr_accessor :three_d_secure_data

        attr_accessor :three_d_secure_version

        attr_accessor :three_d_server_transaction_id

        attr_accessor :xid

        # @return (Hash)
        def to_h
          hash = super
          hash['cavv'] = @cavv unless @cavv.nil?
          hash['directoryServerTransactionId'] = @directory_server_transaction_id unless @directory_server_transaction_id.nil?
          hash['eci'] = @eci unless @eci.nil?
          hash['sdkData'] = @sdk_data.to_h unless @sdk_data.nil?
          hash['threeDSecureData'] = @three_d_secure_data.to_h unless @three_d_secure_data.nil?
          hash['threeDSecureVersion'] = @three_d_secure_version unless @three_d_secure_version.nil?
          hash['threeDServerTransactionId'] = @three_d_server_transaction_id unless @three_d_server_transaction_id.nil?
          hash['xid'] = @xid unless @xid.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'cavv'
            @cavv = hash['cavv']
          end
          if hash.has_key? 'directoryServerTransactionId'
            @directory_server_transaction_id = hash['directoryServerTransactionId']
          end
          if hash.has_key? 'eci'
            @eci = hash['eci']
          end
          if hash.has_key? 'sdkData'
            raise TypeError, "value '%s' is not a Hash" % [hash['sdkData']] unless hash['sdkData'].is_a? Hash
            @sdk_data = Ingenico::Connect::SDK::Domain::Payment::SdkDataOutput.new_from_hash(hash['sdkData'])
          end
          if hash.has_key? 'threeDSecureData'
            raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecureData']] unless hash['threeDSecureData'].is_a? Hash
            @three_d_secure_data = Ingenico::Connect::SDK::Domain::Payment::ThreeDSecureData.new_from_hash(hash['threeDSecureData'])
          end
          if hash.has_key? 'threeDSecureVersion'
            @three_d_secure_version = hash['threeDSecureVersion']
          end
          if hash.has_key? 'threeDServerTransactionId'
            @three_d_server_transaction_id = hash['threeDServerTransactionId']
          end
          if hash.has_key? 'xid'
            @xid = hash['xid']
          end
        end
      end
    end
  end
end
