#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/merchant/tokens/delete_token_params'

Tokens = Ingenico::Connect::SDK::Merchant::Tokens

def example
  get_client do |client|
    query = Tokens::DeleteTokenParams.new
    query.mandate_cancel_date = '20150102'

    client.merchant('merchantId').tokens.delete('tokenId', query)
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
