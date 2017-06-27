#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/definitions/bank_account_bban'
require 'ingenico/connect/sdk/domain/services/bank_details_request'

Definitions = Ingenico::Connect::SDK::Domain::Definitions
Services = Ingenico::Connect::SDK::Domain::Services

def example
  get_client do |client|
    bank_account_bban = Definitions::BankAccountBban.new
    bank_account_bban.account_number = '0532013000'
    bank_account_bban.bank_code = '37040044'
    bank_account_bban.country_code = 'DE'

    body = Services::BankDetailsRequest.new
    body.bank_account_bban = bank_account_bban

    response = client.merchant('merchantId').services().bankaccount(body)
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
