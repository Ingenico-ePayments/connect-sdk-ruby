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
          # @attr [Integer] color_depth
          # @attr [String] inner_height
          # @attr [String] inner_width
          # @attr [true/false] java_enabled
          # @attr [true/false] java_script_enabled
          # @attr [String] screen_height
          # @attr [String] screen_width
          class BrowserData < Ingenico::Connect::SDK::DataObject

            attr_accessor :color_depth

            attr_accessor :inner_height

            attr_accessor :inner_width

            attr_accessor :java_enabled

            attr_accessor :java_script_enabled

            attr_accessor :screen_height

            attr_accessor :screen_width

            # @return (Hash)
            def to_h
              hash = super
              hash['colorDepth'] = @color_depth unless @color_depth.nil?
              hash['innerHeight'] = @inner_height unless @inner_height.nil?
              hash['innerWidth'] = @inner_width unless @inner_width.nil?
              hash['javaEnabled'] = @java_enabled unless @java_enabled.nil?
              hash['javaScriptEnabled'] = @java_script_enabled unless @java_script_enabled.nil?
              hash['screenHeight'] = @screen_height unless @screen_height.nil?
              hash['screenWidth'] = @screen_width unless @screen_width.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'colorDepth'
                @color_depth = hash['colorDepth']
              end
              if hash.has_key? 'innerHeight'
                @inner_height = hash['innerHeight']
              end
              if hash.has_key? 'innerWidth'
                @inner_width = hash['innerWidth']
              end
              if hash.has_key? 'javaEnabled'
                @java_enabled = hash['javaEnabled']
              end
              if hash.has_key? 'javaScriptEnabled'
                @java_script_enabled = hash['javaScriptEnabled']
              end
              if hash.has_key? 'screenHeight'
                @screen_height = hash['screenHeight']
              end
              if hash.has_key? 'screenWidth'
                @screen_width = hash['screenWidth']
              end
            end
          end
        end
      end
    end
  end
end
