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
          # @attr [String] sdk_interface
          # @attr [String] sdk_ui_type
          # @attr [Array<String>] sdk_ui_types
          class DeviceRenderOptions < Ingenico::Connect::SDK::DataObject

            attr_accessor :sdk_interface

            #
            # @deprecated Use deviceRenderOptions.sdkUiTypes instead
            attr_accessor :sdk_ui_type

            attr_accessor :sdk_ui_types

            # @return (Hash)
            def to_h
              hash = super
              hash['sdkInterface'] = @sdk_interface unless @sdk_interface.nil?
              hash['sdkUiType'] = @sdk_ui_type unless @sdk_ui_type.nil?
              hash['sdkUiTypes'] = @sdk_ui_types unless @sdk_ui_types.nil?
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
              if hash.has_key? 'sdkUiTypes'
                raise TypeError, "value '%s' is not an Array" % [hash['sdkUiTypes']] unless hash['sdkUiTypes'].is_a? Array
                @sdk_ui_types = []
                hash['sdkUiTypes'].each do |e|
                  @sdk_ui_types << e
                end
              end
            end
          end
        end
      end
    end
  end
end
