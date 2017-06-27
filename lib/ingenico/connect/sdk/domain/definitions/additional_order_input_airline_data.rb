#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/airline_data'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class AdditionalOrderInputAirlineData < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::AirlineData}
        attr_accessor :airline_data

        def to_h
          hash = super
          add_to_hash(hash, 'airlineData', @airline_data)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('airlineData')
            if !(hash['airlineData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['airlineData']]
            end
            @airline_data = Ingenico::Connect::SDK::Domain::Definitions::AirlineData.new_from_hash(hash['airlineData'])
          end
        end
      end
    end
  end
end
