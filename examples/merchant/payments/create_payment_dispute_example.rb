#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/dispute/create_dispute_request'

Definitions = Ingenico::Connect::SDK::Domain::Definitions
Dispute = Ingenico::Connect::SDK::Domain::Dispute

def example
  get_client do |client|
    amount_of_money = Definitions::AmountOfMoney.new
    amount_of_money.amount = 1234
    amount_of_money.currency_code = 'USD'

    body = Dispute::CreateDisputeRequest.new
    body.amount_of_money = amount_of_money
    body.contact_person = 'Wile Coyote'
    body.email_address = 'wile.e.coyote@acmelabs.com'
    body.reply_to = 'r.runner@acmelabs.com'
    body.request_message = 'This is the message from the merchant to GlobalCollect. It is a a freeform text field.'

    response = client.merchant('merchantId').payments().dispute('paymentId', body)
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
