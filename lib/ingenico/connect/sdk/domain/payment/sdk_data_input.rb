#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/device_render_options'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class SdkDataInput < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :device_info

        # {Ingenico::Connect::SDK::Domain::Payment::DeviceRenderOptions}
        attr_accessor :device_render_options

        # String
        attr_accessor :sdk_app_id

        # String
        attr_accessor :sdk_encrypted_data

        # String
        attr_accessor :sdk_ephemeral_public_key

        # String
        attr_accessor :sdk_max_timeout

        # String
        attr_accessor :sdk_reference_number

        # String
        attr_accessor :sdk_transaction_id

        def to_h
          hash = super
          add_to_hash(hash, 'deviceInfo', @device_info)
          add_to_hash(hash, 'deviceRenderOptions', @device_render_options)
          add_to_hash(hash, 'sdkAppId', @sdk_app_id)
          add_to_hash(hash, 'sdkEncryptedData', @sdk_encrypted_data)
          add_to_hash(hash, 'sdkEphemeralPublicKey', @sdk_ephemeral_public_key)
          add_to_hash(hash, 'sdkMaxTimeout', @sdk_max_timeout)
          add_to_hash(hash, 'sdkReferenceNumber', @sdk_reference_number)
          add_to_hash(hash, 'sdkTransactionId', @sdk_transaction_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('deviceInfo')
            @device_info = hash['deviceInfo']
          end
          if hash.has_key?('deviceRenderOptions')
            if !(hash['deviceRenderOptions'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['deviceRenderOptions']]
            end
            @device_render_options = Ingenico::Connect::SDK::Domain::Payment::DeviceRenderOptions.new_from_hash(hash['deviceRenderOptions'])
          end
          if hash.has_key?('sdkAppId')
            @sdk_app_id = hash['sdkAppId']
          end
          if hash.has_key?('sdkEncryptedData')
            @sdk_encrypted_data = hash['sdkEncryptedData']
          end
          if hash.has_key?('sdkEphemeralPublicKey')
            @sdk_ephemeral_public_key = hash['sdkEphemeralPublicKey']
          end
          if hash.has_key?('sdkMaxTimeout')
            @sdk_max_timeout = hash['sdkMaxTimeout']
          end
          if hash.has_key?('sdkReferenceNumber')
            @sdk_reference_number = hash['sdkReferenceNumber']
          end
          if hash.has_key?('sdkTransactionId')
            @sdk_transaction_id = hash['sdkTransactionId']
          end
        end
      end
    end
  end
end
