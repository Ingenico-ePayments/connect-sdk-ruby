#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/airline_data'
require 'ingenico/connect/sdk/domain/definitions/lodging_data'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Definitions
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::AirlineData] airline_data
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::LodgingData] lodging_data
          class AdditionalOrderInputAirlineData < Ingenico::Connect::SDK::DataObject

            attr_accessor :airline_data

            attr_accessor :lodging_data

            # @return (Hash)
            def to_h
              hash = super
              hash['airlineData'] = @airline_data.to_h unless @airline_data.nil?
              hash['lodgingData'] = @lodging_data.to_h unless @lodging_data.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'airlineData'
                raise TypeError, "value '%s' is not a Hash" % [hash['airlineData']] unless hash['airlineData'].is_a? Hash
                @airline_data = Ingenico::Connect::SDK::Domain::Definitions::AirlineData.new_from_hash(hash['airlineData'])
              end
              if hash.has_key? 'lodgingData'
                raise TypeError, "value '%s' is not a Hash" % [hash['lodgingData']] unless hash['lodgingData'].is_a? Hash
                @lodging_data = Ingenico::Connect::SDK::Domain::Definitions::LodgingData.new_from_hash(hash['lodgingData'])
              end
            end
          end
        end
      end
    end
  end
end
