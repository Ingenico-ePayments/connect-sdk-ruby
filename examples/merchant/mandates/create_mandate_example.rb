#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/mandates/create_mandate_request'
require 'ingenico/connect/sdk/domain/mandates/mandate_address'
require 'ingenico/connect/sdk/domain/mandates/mandate_contact_details'
require 'ingenico/connect/sdk/domain/mandates/mandate_customer'
require 'ingenico/connect/sdk/domain/mandates/mandate_personal_information'
require 'ingenico/connect/sdk/domain/mandates/mandate_personal_name'

Definitions = Ingenico::Connect::SDK::Domain::Definitions
Mandates = Ingenico::Connect::SDK::Domain::Mandates

def example
  get_client do |client|
    bank_account_iban = Definitions::BankAccountIban.new
    bank_account_iban.iban = 'DE46720200700359736690'

    contact_details = Mandates::MandateContactDetails.new
    contact_details.email_address = 'wile.e.coyote@acmelabs.com'

    mandate_address = Mandates::MandateAddress.new
    mandate_address.city = 'Monumentenvallei'
    mandate_address.country_code = 'NL'
    mandate_address.street = 'Woestijnweg'
    mandate_address.zip = '1337XD'

    name = Mandates::MandatePersonalName.new
    name.first_name = 'Wile'
    name.surname = 'Coyote'

    personal_information = Mandates::MandatePersonalInformation.new
    personal_information.name = name
    personal_information.title = 'Miss'

    customer = Mandates::MandateCustomer.new
    customer.bank_account_iban = bank_account_iban
    customer.company_name = 'Acme labs'
    customer.contact_details = contact_details
    customer.mandate_address = mandate_address
    customer.personal_information = personal_information

    body = Mandates::CreateMandateRequest.new
    body.customer = customer
    body.customer_reference = 'idonthaveareference'
    body.language = 'nl'
    body.recurrence_type = 'UNIQUE'
    body.signature_type = 'UNSIGNED'

    response = client.merchant('merchantId').mandates.create(body)
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
