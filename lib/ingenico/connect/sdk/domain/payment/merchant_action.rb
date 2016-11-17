#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/key_value_pair'
require 'ingenico/connect/sdk/domain/payment/redirect_data'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_MerchantAction MerchantAction}
      class MerchantAction < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :action_type

        # {Ingenico::Connect::SDK::Domain::Payment::RedirectData}
        attr_accessor :redirect_data

        # String
        attr_accessor :rendering_data

        # Array of {Ingenico::Connect::SDK::Domain::Definitions::KeyValuePair}
        attr_accessor :show_data

        def to_h
          hash = super
          add_to_hash(hash, 'actionType', @action_type)
          add_to_hash(hash, 'redirectData', @redirect_data)
          add_to_hash(hash, 'renderingData', @rendering_data)
          add_to_hash(hash, 'showData', @show_data)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('actionType')
            @action_type = hash['actionType']
          end
          if hash.has_key?('redirectData')
            if !(hash['redirectData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['redirectData']]
            end
            @redirect_data = Ingenico::Connect::SDK::Domain::Payment::RedirectData.new_from_hash(hash['redirectData'])
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
