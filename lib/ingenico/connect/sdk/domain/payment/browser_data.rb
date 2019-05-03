#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class BrowserData < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :color_depth

        # String
        attr_accessor :inner_height

        # String
        attr_accessor :inner_width

        # true/false
        attr_accessor :java_enabled

        # true/false
        attr_accessor :java_script_enabled

        # String
        attr_accessor :screen_height

        # String
        attr_accessor :screen_width

        def to_h
          hash = super
          add_to_hash(hash, 'colorDepth', @color_depth)
          add_to_hash(hash, 'innerHeight', @inner_height)
          add_to_hash(hash, 'innerWidth', @inner_width)
          add_to_hash(hash, 'javaEnabled', @java_enabled)
          add_to_hash(hash, 'javaScriptEnabled', @java_script_enabled)
          add_to_hash(hash, 'screenHeight', @screen_height)
          add_to_hash(hash, 'screenWidth', @screen_width)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('colorDepth')
            @color_depth = hash['colorDepth']
          end
          if hash.has_key?('innerHeight')
            @inner_height = hash['innerHeight']
          end
          if hash.has_key?('innerWidth')
            @inner_width = hash['innerWidth']
          end
          if hash.has_key?('javaEnabled')
            @java_enabled = hash['javaEnabled']
          end
          if hash.has_key?('javaScriptEnabled')
            @java_script_enabled = hash['javaScriptEnabled']
          end
          if hash.has_key?('screenHeight')
            @screen_height = hash['screenHeight']
          end
          if hash.has_key?('screenWidth')
            @screen_width = hash['screenWidth']
          end
        end
      end
    end
  end
end
