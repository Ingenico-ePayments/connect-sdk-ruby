#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/sessions/session_request'

Sessions = Ingenico::Connect::SDK::Domain::Sessions

def example
  get_client do |client|
    tokens = []
    tokens << '126166b16ed04b3ab85fb06da1d7a167'
    tokens << '226166b16ed04b3ab85fb06da1d7a167'
    tokens << '122c5b4d-dd40-49f0-b7c9-3594212167a9'
    tokens << '326166b16ed04b3ab85fb06da1d7a167'
    tokens << '426166b16ed04b3ab85fb06da1d7a167'

    body = Sessions::SessionRequest.new
    body.tokens = tokens

    response = client.merchant('merchantId').sessions().create(body)
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
