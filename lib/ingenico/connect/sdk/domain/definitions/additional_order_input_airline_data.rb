#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/airline_data'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::AirlineData] airline_data
      class AdditionalOrderInputAirlineData < Ingenico::Connect::SDK::DataObject

        attr_accessor :airline_data

        # @return (Hash)
        def to_h
          hash = super
          hash['airlineData'] = @airline_data.to_h unless @airline_data.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'airlineData'
            raise TypeError, "value '%s' is not a Hash" % [hash['airlineData']] unless hash['airlineData'].is_a? Hash
            @airline_data = Ingenico::Connect::SDK::Domain::Definitions::AirlineData.new_from_hash(hash['airlineData'])
          end
        end
      end
    end
  end
end
