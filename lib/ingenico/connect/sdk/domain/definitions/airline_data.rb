#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/airline_flight_leg'
require 'ingenico/connect/sdk/domain/definitions/airline_passenger'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [String] agent_numeric_code
      # @attr [String] code
      # @attr [String] flight_date
      # @attr [Array<Ingenico::Connect::SDK::Domain::Definitions::AirlineFlightLeg>] flight_legs
      # @attr [String] invoice_number
      # @attr [true/false] is_e_ticket
      # @attr [true/false] is_registered_customer
      # @attr [true/false] is_restricted_ticket
      # @attr [true/false] is_third_party
      # @attr [String] issue_date
      # @attr [String] merchant_customer_id
      # @attr [String] name
      # @attr [Integer] number_in_party
      # @attr [String] passenger_name
      # @attr [Array<Ingenico::Connect::SDK::Domain::Definitions::AirlinePassenger>] passengers
      # @attr [String] place_of_issue
      # @attr [String] pnr
      # @attr [String] point_of_sale
      # @attr [String] pos_city_code
      # @attr [String] ticket_delivery_method
      # @attr [String] ticket_number
      # @attr [Integer] total_fare
      # @attr [Integer] total_fee
      # @attr [Integer] total_taxes
      # @attr [String] travel_agency_name
      class AirlineData < Ingenico::Connect::SDK::DataObject

        attr_accessor :agent_numeric_code

        attr_accessor :code

        attr_accessor :flight_date

        attr_accessor :flight_legs

        attr_accessor :invoice_number

        attr_accessor :is_e_ticket

        #
        # @deprecated Use Order.customer.accountType instead
        attr_accessor :is_registered_customer

        attr_accessor :is_restricted_ticket

        attr_accessor :is_third_party

        attr_accessor :issue_date

        attr_accessor :merchant_customer_id

        attr_accessor :name

        attr_accessor :number_in_party

        attr_accessor :passenger_name

        attr_accessor :passengers

        attr_accessor :place_of_issue

        attr_accessor :pnr

        attr_accessor :point_of_sale

        attr_accessor :pos_city_code

        attr_accessor :ticket_delivery_method

        attr_accessor :ticket_number

        attr_accessor :total_fare

        attr_accessor :total_fee

        attr_accessor :total_taxes

        attr_accessor :travel_agency_name

        # @return (Hash)
        def to_h
          hash = super
          hash['agentNumericCode'] = @agent_numeric_code unless @agent_numeric_code.nil?
          hash['code'] = @code unless @code.nil?
          hash['flightDate'] = @flight_date unless @flight_date.nil?
          hash['flightLegs'] = @flight_legs.collect{|val| val.to_h} unless @flight_legs.nil?
          hash['invoiceNumber'] = @invoice_number unless @invoice_number.nil?
          hash['isETicket'] = @is_e_ticket unless @is_e_ticket.nil?
          hash['isRegisteredCustomer'] = @is_registered_customer unless @is_registered_customer.nil?
          hash['isRestrictedTicket'] = @is_restricted_ticket unless @is_restricted_ticket.nil?
          hash['isThirdParty'] = @is_third_party unless @is_third_party.nil?
          hash['issueDate'] = @issue_date unless @issue_date.nil?
          hash['merchantCustomerId'] = @merchant_customer_id unless @merchant_customer_id.nil?
          hash['name'] = @name unless @name.nil?
          hash['numberInParty'] = @number_in_party unless @number_in_party.nil?
          hash['passengerName'] = @passenger_name unless @passenger_name.nil?
          hash['passengers'] = @passengers.collect{|val| val.to_h} unless @passengers.nil?
          hash['placeOfIssue'] = @place_of_issue unless @place_of_issue.nil?
          hash['pnr'] = @pnr unless @pnr.nil?
          hash['pointOfSale'] = @point_of_sale unless @point_of_sale.nil?
          hash['posCityCode'] = @pos_city_code unless @pos_city_code.nil?
          hash['ticketDeliveryMethod'] = @ticket_delivery_method unless @ticket_delivery_method.nil?
          hash['ticketNumber'] = @ticket_number unless @ticket_number.nil?
          hash['totalFare'] = @total_fare unless @total_fare.nil?
          hash['totalFee'] = @total_fee unless @total_fee.nil?
          hash['totalTaxes'] = @total_taxes unless @total_taxes.nil?
          hash['travelAgencyName'] = @travel_agency_name unless @travel_agency_name.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'agentNumericCode'
            @agent_numeric_code = hash['agentNumericCode']
          end
          if hash.has_key? 'code'
            @code = hash['code']
          end
          if hash.has_key? 'flightDate'
            @flight_date = hash['flightDate']
          end
          if hash.has_key? 'flightLegs'
            raise TypeError, "value '%s' is not an Array" % [hash['flightLegs']] unless hash['flightLegs'].is_a? Array
            @flight_legs = []
            hash['flightLegs'].each do |e|
              @flight_legs << Ingenico::Connect::SDK::Domain::Definitions::AirlineFlightLeg.new_from_hash(e)
            end
          end
          if hash.has_key? 'invoiceNumber'
            @invoice_number = hash['invoiceNumber']
          end
          if hash.has_key? 'isETicket'
            @is_e_ticket = hash['isETicket']
          end
          if hash.has_key? 'isRegisteredCustomer'
            @is_registered_customer = hash['isRegisteredCustomer']
          end
          if hash.has_key? 'isRestrictedTicket'
            @is_restricted_ticket = hash['isRestrictedTicket']
          end
          if hash.has_key? 'isThirdParty'
            @is_third_party = hash['isThirdParty']
          end
          if hash.has_key? 'issueDate'
            @issue_date = hash['issueDate']
          end
          if hash.has_key? 'merchantCustomerId'
            @merchant_customer_id = hash['merchantCustomerId']
          end
          if hash.has_key? 'name'
            @name = hash['name']
          end
          if hash.has_key? 'numberInParty'
            @number_in_party = hash['numberInParty']
          end
          if hash.has_key? 'passengerName'
            @passenger_name = hash['passengerName']
          end
          if hash.has_key? 'passengers'
            raise TypeError, "value '%s' is not an Array" % [hash['passengers']] unless hash['passengers'].is_a? Array
            @passengers = []
            hash['passengers'].each do |e|
              @passengers << Ingenico::Connect::SDK::Domain::Definitions::AirlinePassenger.new_from_hash(e)
            end
          end
          if hash.has_key? 'placeOfIssue'
            @place_of_issue = hash['placeOfIssue']
          end
          if hash.has_key? 'pnr'
            @pnr = hash['pnr']
          end
          if hash.has_key? 'pointOfSale'
            @point_of_sale = hash['pointOfSale']
          end
          if hash.has_key? 'posCityCode'
            @pos_city_code = hash['posCityCode']
          end
          if hash.has_key? 'ticketDeliveryMethod'
            @ticket_delivery_method = hash['ticketDeliveryMethod']
          end
          if hash.has_key? 'ticketNumber'
            @ticket_number = hash['ticketNumber']
          end
          if hash.has_key? 'totalFare'
            @total_fare = hash['totalFare']
          end
          if hash.has_key? 'totalFee'
            @total_fee = hash['totalFee']
          end
          if hash.has_key? 'totalTaxes'
            @total_taxes = hash['totalTaxes']
          end
          if hash.has_key? 'travelAgencyName'
            @travel_agency_name = hash['travelAgencyName']
          end
        end
      end
    end
  end
end
