#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/key_value_pair'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Hostedcheckout
          # @attr [String] displayed_data_type
          # @attr [String] rendering_data
          # @attr [Array<Ingenico::Connect::SDK::Domain::Definitions::KeyValuePair>] show_data
          class DisplayedData < Ingenico::Connect::SDK::DataObject

            attr_accessor :displayed_data_type

            attr_accessor :rendering_data

            attr_accessor :show_data

            # @return (Hash)
            def to_h
              hash = super
              hash['displayedDataType'] = @displayed_data_type unless @displayed_data_type.nil?
              hash['renderingData'] = @rendering_data unless @rendering_data.nil?
              hash['showData'] = @show_data.collect{|val| val.to_h} unless @show_data.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'displayedDataType'
                @displayed_data_type = hash['displayedDataType']
              end
              if hash.has_key? 'renderingData'
                @rendering_data = hash['renderingData']
              end
              if hash.has_key? 'showData'
                raise TypeError, "value '%s' is not an Array" % [hash['showData']] unless hash['showData'].is_a? Array
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
  end
end
