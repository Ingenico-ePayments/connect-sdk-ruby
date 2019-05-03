#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class DeviceRenderOptions < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :sdk_interface

        # String
        attr_accessor :sdk_ui_type

        def to_h
          hash = super
          add_to_hash(hash, 'sdkInterface', @sdk_interface)
          add_to_hash(hash, 'sdkUiType', @sdk_ui_type)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('sdkInterface')
            @sdk_interface = hash['sdkInterface']
          end
          if hash.has_key?('sdkUiType')
            @sdk_ui_type = hash['sdkUiType']
          end
        end
      end
    end
  end
end
