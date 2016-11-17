#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/key_value_pair'

module Ingenico::Connect::SDK
  module Domain
    module Hostedcheckout

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_DisplayedData DisplayedData}
      class DisplayedData < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :displayed_data_type

        # String
        attr_accessor :rendering_data

        # Array of {Ingenico::Connect::SDK::Domain::Definitions::KeyValuePair}
        attr_accessor :show_data

        def to_h
          hash = super
          add_to_hash(hash, 'displayedDataType', @displayed_data_type)
          add_to_hash(hash, 'renderingData', @rendering_data)
          add_to_hash(hash, 'showData', @show_data)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('displayedDataType')
            @displayed_data_type = hash['displayedDataType']
          end
          if hash.has_key?('renderingData')
            @rendering_data = hash['renderingData']
          end
          if hash.has_key?('showData')
            if !(hash['showData'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['showData']]
            end
            @show_data = []
            hash['showData'].each do |e|
              @show_data << Ingenico::Connect::SDK::Domain::Definitions::KeyValuePair.new_from_hash(e)
            end
          end
        end
      end
    end
  end
end
