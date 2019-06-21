#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] sdk_interface
      # @attr [String] sdk_ui_type
      class DeviceRenderOptions < Ingenico::Connect::SDK::DataObject

        attr_accessor :sdk_interface

        attr_accessor :sdk_ui_type

        # @return (Hash)
        def to_h
          hash = super
          hash['sdkInterface'] = @sdk_interface unless @sdk_interface.nil?
          hash['sdkUiType'] = @sdk_ui_type unless @sdk_ui_type.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'sdkInterface'
            @sdk_interface = hash['sdkInterface']
          end
          if hash.has_key? 'sdkUiType'
            @sdk_ui_type = hash['sdkUiType']
          end
        end
      end
    end
  end
end
