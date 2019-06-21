#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/token/approve_token_request'

Token = Ingenico::Connect::SDK::Domain::Token

def example
  get_client do |client|
    body = Token::ApproveTokenRequest.new
    body.mandate_signature_date = '20150201'
    body.mandate_signature_place = 'Monument Valley'
    body.mandate_signed = true

    client.merchant('merchantId').tokens.approvesepadirectdebit('tokenId', body)
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
