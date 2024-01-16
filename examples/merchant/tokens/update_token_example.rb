#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/definitions/card_without_cvv'
require 'ingenico/connect/sdk/domain/definitions/company_information'
require 'ingenico/connect/sdk/domain/token/customer_token'
require 'ingenico/connect/sdk/domain/token/personal_information_token'
require 'ingenico/connect/sdk/domain/token/personal_name_token'
require 'ingenico/connect/sdk/domain/token/token_card'
require 'ingenico/connect/sdk/domain/token/token_card_data'
require 'ingenico/connect/sdk/domain/token/update_token_request'

Definitions = Ingenico::Connect::SDK::Domain::Definitions
Token = Ingenico::Connect::SDK::Domain::Token

def example
  get_client do |client|
    billing_address = Definitions::Address.new
    billing_address.additional_info = 'b'
    billing_address.city = 'Monument Valley'
    billing_address.country_code = 'US'
    billing_address.house_number = '13'
    billing_address.state = 'Utah'
    billing_address.street = 'Desertroad'
    billing_address.zip = '84536'

    company_information = Definitions::CompanyInformation.new
    company_information.name = 'Acme Labs'

    name = Token::PersonalNameToken.new
    name.first_name = 'Wile'
    name.surname = 'Coyote'
    name.surname_prefix = 'E.'

    personal_information = Token::PersonalInformationToken.new
    personal_information.name = name

    customer = Token::CustomerToken.new
    customer.billing_address = billing_address
    customer.company_information = company_information
    customer.merchant_customer_id = '1234'
    customer.personal_information = personal_information

    card_without_cvv = Definitions::CardWithoutCvv.new
    card_without_cvv.card_number = '4567350000427977'
    card_without_cvv.cardholder_name = 'Wile E. Coyote'
    card_without_cvv.expiry_date = '1299'
    card_without_cvv.issue_number = '12'

    data = Token::TokenCardData.new
    data.card_without_cvv = card_without_cvv

    card = Token::TokenCard.new
    card.customer = customer
    card.data = data

    body = Token::UpdateTokenRequest.new
    body.card = card
    body.payment_product_id = 1

    client.merchant('merchantId').tokens.update('tokenId', body)
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
