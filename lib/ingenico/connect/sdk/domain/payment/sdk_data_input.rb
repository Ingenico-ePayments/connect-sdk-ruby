#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/device_render_options'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] device_info
      # @attr [Ingenico::Connect::SDK::Domain::Payment::DeviceRenderOptions] device_render_options
      # @attr [String] sdk_app_id
      # @attr [String] sdk_encrypted_data
      # @attr [String] sdk_ephemeral_public_key
      # @attr [String] sdk_max_timeout
      # @attr [String] sdk_reference_number
      # @attr [String] sdk_transaction_id
      class SdkDataInput < Ingenico::Connect::SDK::DataObject

        #
        # @deprecated No replacement
        attr_accessor :device_info

        attr_accessor :device_render_options

        attr_accessor :sdk_app_id

        attr_accessor :sdk_encrypted_data

        attr_accessor :sdk_ephemeral_public_key

        attr_accessor :sdk_max_timeout

        attr_accessor :sdk_reference_number

        attr_accessor :sdk_transaction_id

        # @return (Hash)
        def to_h
          hash = super
          hash['deviceInfo'] = @device_info unless @device_info.nil?
          hash['deviceRenderOptions'] = @device_render_options.to_h unless @device_render_options.nil?
          hash['sdkAppId'] = @sdk_app_id unless @sdk_app_id.nil?
          hash['sdkEncryptedData'] = @sdk_encrypted_data unless @sdk_encrypted_data.nil?
          hash['sdkEphemeralPublicKey'] = @sdk_ephemeral_public_key unless @sdk_ephemeral_public_key.nil?
          hash['sdkMaxTimeout'] = @sdk_max_timeout unless @sdk_max_timeout.nil?
          hash['sdkReferenceNumber'] = @sdk_reference_number unless @sdk_reference_number.nil?
          hash['sdkTransactionId'] = @sdk_transaction_id unless @sdk_transaction_id.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'deviceInfo'
            @device_info = hash['deviceInfo']
          end
          if hash.has_key? 'deviceRenderOptions'
            raise TypeError, "value '%s' is not a Hash" % [hash['deviceRenderOptions']] unless hash['deviceRenderOptions'].is_a? Hash
            @device_render_options = Ingenico::Connect::SDK::Domain::Payment::DeviceRenderOptions.new_from_hash(hash['deviceRenderOptions'])
          end
          if hash.has_key? 'sdkAppId'
            @sdk_app_id = hash['sdkAppId']
          end
          if hash.has_key? 'sdkEncryptedData'
            @sdk_encrypted_data = hash['sdkEncryptedData']
          end
          if hash.has_key? 'sdkEphemeralPublicKey'
            @sdk_ephemeral_public_key = hash['sdkEphemeralPublicKey']
          end
          if hash.has_key? 'sdkMaxTimeout'
            @sdk_max_timeout = hash['sdkMaxTimeout']
          end
          if hash.has_key? 'sdkReferenceNumber'
            @sdk_reference_number = hash['sdkReferenceNumber']
          end
          if hash.has_key? 'sdkTransactionId'
            @sdk_transaction_id = hash['sdkTransactionId']
          end
        end
      end
    end
  end
end
