#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class AirlineFlightLeg < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :airline_class

        # String
        attr_accessor :arrival_airport

        # String
        attr_accessor :carrier_code

        # String
        attr_accessor :date

        # String
        attr_accessor :departure_time

        # String
        attr_accessor :fare

        # String
        attr_accessor :fare_basis

        # String
        attr_accessor :flight_number

        # Integer
        attr_accessor :number

        # String
        attr_accessor :origin_airport

        # String
        attr_accessor :service_class

        # String
        attr_accessor :stopover_code

        def to_h
          hash = super
          add_to_hash(hash, 'airlineClass', @airline_class)
          add_to_hash(hash, 'arrivalAirport', @arrival_airport)
          add_to_hash(hash, 'carrierCode', @carrier_code)
          add_to_hash(hash, 'date', @date)
          add_to_hash(hash, 'departureTime', @departure_time)
          add_to_hash(hash, 'fare', @fare)
          add_to_hash(hash, 'fareBasis', @fare_basis)
          add_to_hash(hash, 'flightNumber', @flight_number)
          add_to_hash(hash, 'number', @number)
          add_to_hash(hash, 'originAirport', @origin_airport)
          add_to_hash(hash, 'serviceClass', @service_class)
          add_to_hash(hash, 'stopoverCode', @stopover_code)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('airlineClass')
            @airline_class = hash['airlineClass']
          end
          if hash.has_key?('arrivalAirport')
            @arrival_airport = hash['arrivalAirport']
          end
          if hash.has_key?('carrierCode')
            @carrier_code = hash['carrierCode']
          end
          if hash.has_key?('date')
            @date = hash['date']
          end
          if hash.has_key?('departureTime')
            @departure_time = hash['departureTime']
          end
          if hash.has_key?('fare')
            @fare = hash['fare']
          end
          if hash.has_key?('fareBasis')
            @fare_basis = hash['fareBasis']
          end
          if hash.has_key?('flightNumber')
            @flight_number = hash['flightNumber']
          end
          if hash.has_key?('number')
            @number = hash['number']
          end
          if hash.has_key?('originAirport')
            @origin_airport = hash['originAirport']
          end
          if hash.has_key?('serviceClass')
            @service_class = hash['serviceClass']
          end
          if hash.has_key?('stopoverCode')
            @stopover_code = hash['stopoverCode']
          end
        end
      end
    end
  end
end
