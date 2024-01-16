#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/payout/approve_payout_request'

Payout = Ingenico::Connect::SDK::Domain::Payout

def example
  get_client do |client|
    body = Payout::ApprovePayoutRequest.new
    body.date_payout = '20150102'

    response = client.merchant('merchantId').payouts.approve('payoutId', body)
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
