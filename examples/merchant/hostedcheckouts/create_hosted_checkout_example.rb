#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/hostedcheckout/create_hosted_checkout_request'
require 'ingenico/connect/sdk/domain/hostedcheckout/hosted_checkout_specific_input'
require 'ingenico/connect/sdk/domain/payment/customer'
require 'ingenico/connect/sdk/domain/payment/order'

Definitions = Ingenico::Connect::SDK::Domain::Definitions
Hostedcheckout = Ingenico::Connect::SDK::Domain::Hostedcheckout
Payment = Ingenico::Connect::SDK::Domain::Payment

def example
  get_client do |client|
    hosted_checkout_specific_input = Hostedcheckout::HostedCheckoutSpecificInput.new
    hosted_checkout_specific_input.locale = 'en_GB'
    hosted_checkout_specific_input.variant = 'testVariant'

    amount_of_money = Definitions::AmountOfMoney.new
    amount_of_money.amount = 2345
    amount_of_money.currency_code = 'USD'

    billing_address = Definitions::Address.new
    billing_address.country_code = 'US'

    customer = Payment::Customer.new
    customer.billing_address = billing_address
    customer.merchant_customer_id = '1234'

    order = Payment::Order.new
    order.amount_of_money = amount_of_money
    order.customer = customer

    body = Hostedcheckout::CreateHostedCheckoutRequest.new
    body.hosted_checkout_specific_input = hosted_checkout_specific_input
    body.order = order

    response = client.merchant('merchantId').hostedcheckouts.create(body)
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
