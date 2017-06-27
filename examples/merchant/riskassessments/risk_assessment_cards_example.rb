#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/definitions/additional_order_input_airline_data'
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/definitions/airline_data'
require 'ingenico/connect/sdk/domain/definitions/airline_flight_leg'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/definitions/card'
require 'ingenico/connect/sdk/domain/riskassessments/customer_risk_assessment'
require 'ingenico/connect/sdk/domain/riskassessments/order_risk_assessment'
require 'ingenico/connect/sdk/domain/riskassessments/risk_assessment_card'

Definitions = Ingenico::Connect::SDK::Domain::Definitions
Riskassessments = Ingenico::Connect::SDK::Domain::Riskassessments

def example
  get_client do |client|
    card = Definitions::Card.new
    card.card_number = '4567350000427977'
    card.cvv = '123'
    card.expiry_date = '0820'

    flight_legs = []

    flight_leg1 = Definitions::AirlineFlightLeg.new
    flight_leg1.airline_class = '1'
    flight_leg1.arrival_airport = 'AMS'
    flight_leg1.carrier_code = 'KL'
    flight_leg1.date = '20150102'
    flight_leg1.departure_time = '17:59'
    flight_leg1.fare = 'fare'
    flight_leg1.fare_basis = 'INTERNET'
    flight_leg1.flight_number = '791'
    flight_leg1.number = 1
    flight_leg1.origin_airport = 'BCN'
    flight_leg1.stopover_code = 'non-permitted'

    flight_legs << flight_leg1

    flight_leg2 = Definitions::AirlineFlightLeg.new
    flight_leg2.airline_class = '1'
    flight_leg2.arrival_airport = 'BCN'
    flight_leg2.carrier_code = 'KL'
    flight_leg2.date = '20150102'
    flight_leg2.departure_time = '23:59'
    flight_leg2.fare = 'fare'
    flight_leg2.fare_basis = 'INTERNET'
    flight_leg2.flight_number = '792'
    flight_leg2.number = 2
    flight_leg2.origin_airport = 'AMS'
    flight_leg2.stopover_code = 'non-permitted'

    flight_legs << flight_leg2

    airline_data = Definitions::AirlineData.new
    airline_data.agent_numeric_code = '123321'
    airline_data.code = '123'
    airline_data.flight_date = '20150102'
    airline_data.flight_legs = flight_legs
    airline_data.invoice_number = '123456'
    airline_data.is_e_ticket = true
    airline_data.is_registered_customer = true
    airline_data.is_restricted_ticket = true
    airline_data.is_third_party = true
    airline_data.issue_date = '20150101'
    airline_data.merchant_customer_id = '14'
    airline_data.name = 'Air France KLM'
    airline_data.passenger_name = 'WECOYOTE'
    airline_data.place_of_issue = 'Utah'
    airline_data.pnr = '4JTGKT'
    airline_data.point_of_sale = 'IATA point of sale name'
    airline_data.pos_city_code = 'AMS'
    airline_data.ticket_delivery_method = 'e-ticket'
    airline_data.ticket_number = 'KLM20050000'

    additional_input = Definitions::AdditionalOrderInputAirlineData.new
    additional_input.airline_data = airline_data

    amount_of_money = Definitions::AmountOfMoney.new
    amount_of_money.amount = 100
    amount_of_money.currency_code = 'EUR'

    billing_address = Definitions::Address.new
    billing_address.country_code = 'US'

    customer = Riskassessments::CustomerRiskAssessment.new
    customer.billing_address = billing_address
    customer.locale = 'en_US'

    order = Riskassessments::OrderRiskAssessment.new
    order.additional_input = additional_input
    order.amount_of_money = amount_of_money
    order.customer = customer

    body = Riskassessments::RiskAssessmentCard.new
    body.card = card
    body.order = order

    response = client.merchant('merchantId').riskassessments().cards(body)
  end
end

def get_client
  api_key_id = ENV.fetch('connect.api.apiKeyId', 'someKey')
  secret_api_key = ENV.fetch('connect.api.secretApiKey', 'someSecret')
  configuration_file_name = File.join(__FILE__, '..', '..', 'example_configuration.yml')
  yield client = Ingenico::Connect::SDK::Factory.create_client_from_file(configuration_file_name, api_key_id, secret_api_key)
ensure
  # Free networking resources when done
  client.close unless client.nil?
end
