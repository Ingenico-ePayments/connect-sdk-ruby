#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [String] airline_class
      # @attr [String] arrival_airport
      # @attr [String] arrival_time
      # @attr [String] carrier_code
      # @attr [String] conjunction_ticket
      # @attr [String] coupon_number
      # @attr [String] date
      # @attr [String] departure_time
      # @attr [String] endorsement_or_restriction
      # @attr [String] exchange_ticket
      # @attr [String] fare
      # @attr [String] fare_basis
      # @attr [Integer] fee
      # @attr [String] flight_number
      # @attr [Integer] number
      # @attr [String] origin_airport
      # @attr [String] passenger_class
      # @attr [String] service_class
      # @attr [String] stopover_code
      # @attr [Integer] taxes
      class AirlineFlightLeg < Ingenico::Connect::SDK::DataObject

        attr_accessor :airline_class

        attr_accessor :arrival_airport

        attr_accessor :arrival_time

        attr_accessor :carrier_code

        attr_accessor :conjunction_ticket

        attr_accessor :coupon_number

        attr_accessor :date

        attr_accessor :departure_time

        attr_accessor :endorsement_or_restriction

        attr_accessor :exchange_ticket

        attr_accessor :fare

        attr_accessor :fare_basis

        attr_accessor :fee

        attr_accessor :flight_number

        attr_accessor :number

        attr_accessor :origin_airport

        attr_accessor :passenger_class

        #
        # @deprecated Use passengerClass instead
        attr_accessor :service_class

        attr_accessor :stopover_code

        attr_accessor :taxes

        # @return (Hash)
        def to_h
          hash = super
          hash['airlineClass'] = @airline_class unless @airline_class.nil?
          hash['arrivalAirport'] = @arrival_airport unless @arrival_airport.nil?
          hash['arrivalTime'] = @arrival_time unless @arrival_time.nil?
          hash['carrierCode'] = @carrier_code unless @carrier_code.nil?
          hash['conjunctionTicket'] = @conjunction_ticket unless @conjunction_ticket.nil?
          hash['couponNumber'] = @coupon_number unless @coupon_number.nil?
          hash['date'] = @date unless @date.nil?
          hash['departureTime'] = @departure_time unless @departure_time.nil?
          hash['endorsementOrRestriction'] = @endorsement_or_restriction unless @endorsement_or_restriction.nil?
          hash['exchangeTicket'] = @exchange_ticket unless @exchange_ticket.nil?
          hash['fare'] = @fare unless @fare.nil?
          hash['fareBasis'] = @fare_basis unless @fare_basis.nil?
          hash['fee'] = @fee unless @fee.nil?
          hash['flightNumber'] = @flight_number unless @flight_number.nil?
          hash['number'] = @number unless @number.nil?
          hash['originAirport'] = @origin_airport unless @origin_airport.nil?
          hash['passengerClass'] = @passenger_class unless @passenger_class.nil?
          hash['serviceClass'] = @service_class unless @service_class.nil?
          hash['stopoverCode'] = @stopover_code unless @stopover_code.nil?
          hash['taxes'] = @taxes unless @taxes.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'airlineClass'
            @airline_class = hash['airlineClass']
          end
          if hash.has_key? 'arrivalAirport'
            @arrival_airport = hash['arrivalAirport']
          end
          if hash.has_key? 'arrivalTime'
            @arrival_time = hash['arrivalTime']
          end
          if hash.has_key? 'carrierCode'
            @carrier_code = hash['carrierCode']
          end
          if hash.has_key? 'conjunctionTicket'
            @conjunction_ticket = hash['conjunctionTicket']
          end
          if hash.has_key? 'couponNumber'
            @coupon_number = hash['couponNumber']
          end
          if hash.has_key? 'date'
            @date = hash['date']
          end
          if hash.has_key? 'departureTime'
            @departure_time = hash['departureTime']
          end
          if hash.has_key? 'endorsementOrRestriction'
            @endorsement_or_restriction = hash['endorsementOrRestriction']
          end
          if hash.has_key? 'exchangeTicket'
            @exchange_ticket = hash['exchangeTicket']
          end
          if hash.has_key? 'fare'
            @fare = hash['fare']
          end
          if hash.has_key? 'fareBasis'
            @fare_basis = hash['fareBasis']
          end
          if hash.has_key? 'fee'
            @fee = hash['fee']
          end
          if hash.has_key? 'flightNumber'
            @flight_number = hash['flightNumber']
          end
          if hash.has_key? 'number'
            @number = hash['number']
          end
          if hash.has_key? 'originAirport'
            @origin_airport = hash['originAirport']
          end
          if hash.has_key? 'passengerClass'
            @passenger_class = hash['passengerClass']
          end
          if hash.has_key? 'serviceClass'
            @service_class = hash['serviceClass']
          end
          if hash.has_key? 'stopoverCode'
            @stopover_code = hash['stopoverCode']
          end
          if hash.has_key? 'taxes'
            @taxes = hash['taxes']
          end
        end
      end
    end
  end
end
