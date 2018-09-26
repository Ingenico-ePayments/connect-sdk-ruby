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
        attr_accessor :arrival_time

        # String
        attr_accessor :carrier_code

        # String
        attr_accessor :conjunction_ticket

        # String
        attr_accessor :coupon_number

        # String
        attr_accessor :date

        # String
        attr_accessor :departure_time

        # String
        attr_accessor :endorsement_or_restriction

        # String
        attr_accessor :exchange_ticket

        # String
        attr_accessor :fare

        # String
        attr_accessor :fare_basis

        # Integer
        attr_accessor :fee

        # String
        attr_accessor :flight_number

        # Integer
        attr_accessor :number

        # String
        attr_accessor :origin_airport

        # String
        attr_accessor :passenger_class

        # String
        #
        # Deprecated; Use passengerClass instead
        attr_accessor :service_class

        # String
        attr_accessor :stopover_code

        # Integer
        attr_accessor :taxes

        def to_h
          hash = super
          add_to_hash(hash, 'airlineClass', @airline_class)
          add_to_hash(hash, 'arrivalAirport', @arrival_airport)
          add_to_hash(hash, 'arrivalTime', @arrival_time)
          add_to_hash(hash, 'carrierCode', @carrier_code)
          add_to_hash(hash, 'conjunctionTicket', @conjunction_ticket)
          add_to_hash(hash, 'couponNumber', @coupon_number)
          add_to_hash(hash, 'date', @date)
          add_to_hash(hash, 'departureTime', @departure_time)
          add_to_hash(hash, 'endorsementOrRestriction', @endorsement_or_restriction)
          add_to_hash(hash, 'exchangeTicket', @exchange_ticket)
          add_to_hash(hash, 'fare', @fare)
          add_to_hash(hash, 'fareBasis', @fare_basis)
          add_to_hash(hash, 'fee', @fee)
          add_to_hash(hash, 'flightNumber', @flight_number)
          add_to_hash(hash, 'number', @number)
          add_to_hash(hash, 'originAirport', @origin_airport)
          add_to_hash(hash, 'passengerClass', @passenger_class)
          add_to_hash(hash, 'serviceClass', @service_class)
          add_to_hash(hash, 'stopoverCode', @stopover_code)
          add_to_hash(hash, 'taxes', @taxes)
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
          if hash.has_key?('arrivalTime')
            @arrival_time = hash['arrivalTime']
          end
          if hash.has_key?('carrierCode')
            @carrier_code = hash['carrierCode']
          end
          if hash.has_key?('conjunctionTicket')
            @conjunction_ticket = hash['conjunctionTicket']
          end
          if hash.has_key?('couponNumber')
            @coupon_number = hash['couponNumber']
          end
          if hash.has_key?('date')
            @date = hash['date']
          end
          if hash.has_key?('departureTime')
            @departure_time = hash['departureTime']
          end
          if hash.has_key?('endorsementOrRestriction')
            @endorsement_or_restriction = hash['endorsementOrRestriction']
          end
          if hash.has_key?('exchangeTicket')
            @exchange_ticket = hash['exchangeTicket']
          end
          if hash.has_key?('fare')
            @fare = hash['fare']
          end
          if hash.has_key?('fareBasis')
            @fare_basis = hash['fareBasis']
          end
          if hash.has_key?('fee')
            @fee = hash['fee']
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
          if hash.has_key?('passengerClass')
            @passenger_class = hash['passengerClass']
          end
          if hash.has_key?('serviceClass')
            @service_class = hash['serviceClass']
          end
          if hash.has_key?('stopoverCode')
            @stopover_code = hash['stopoverCode']
          end
          if hash.has_key?('taxes')
            @taxes = hash['taxes']
          end
        end
      end
    end
  end
end
