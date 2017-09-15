#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/merchant/payouts/find_payouts_params'

Payouts = Ingenico::Connect::SDK::Merchant::Payouts

def example
  get_client do |client|
    query = Payouts::FindPayoutsParams.new
    query.merchant_reference = 'AcmeOrder0001'
    query.merchant_order_id = 123456
    query.offset = 0
    query.limit = 10

    response = client.merchant('merchantId').payouts().find(query)
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
