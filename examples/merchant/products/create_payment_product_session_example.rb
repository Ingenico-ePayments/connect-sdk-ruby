#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/product/create_payment_product_session_request'
require 'ingenico/connect/sdk/domain/product/mobile_payment_product_session302_specific_input'

Product = Ingenico::Connect::SDK::Domain::Product

def example
  get_client do |client|
    payment_product_session302_specific_input = Product::MobilePaymentProductSession302SpecificInput.new
    payment_product_session302_specific_input.display_name = 'Ingenico'
    payment_product_session302_specific_input.domain_name = 'pay1.secured-by-ingenico.com'
    payment_product_session302_specific_input.validation_url = 'https://apple-pay-gateway-cert.apple.com/paymentservices/startSession'

    body = Product::CreatePaymentProductSessionRequest.new
    body.payment_product_session302_specific_input = payment_product_session302_specific_input

    response = client.merchant('merchantId').products.sessions(302, body)
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
