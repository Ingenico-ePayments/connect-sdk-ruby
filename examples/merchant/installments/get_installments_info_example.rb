#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/installments/get_installment_request'

Definitions = Ingenico::Connect::SDK::Domain::Definitions
Installments = Ingenico::Connect::SDK::Domain::Installments

def example
  get_client do |client|
    amount_of_money = Definitions::AmountOfMoney.new
    amount_of_money.amount = 123
    amount_of_money.currency_code = 'EUR'

    body = Installments::GetInstallmentRequest.new
    body.amount_of_money = amount_of_money
    body.bin = '123455'
    body.country_code = 'NL'
    body.payment_product_id = 123

    response = client.merchant('merchantId').installments.get_installments_info(body)
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
