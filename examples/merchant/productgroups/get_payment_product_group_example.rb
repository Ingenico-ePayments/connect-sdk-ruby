#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/merchant/productgroups/get_productgroup_params'

Productgroups = Ingenico::Connect::SDK::Merchant::Productgroups

def example
  get_client do |client|
    query = Productgroups::GetProductgroupParams.new
    query.country_code = 'NL'
    query.currency_code = 'EUR'
    query.locale = 'en_US'
    query.amount = 1000
    query.is_recurring = true
    query.add_hide('fields')

    response = client.merchant('merchantId').productgroups().get('cards', query)
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
