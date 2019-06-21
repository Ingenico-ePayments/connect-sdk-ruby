#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/api_exception'
require 'ingenico/connect/sdk/declined_payout_exception'
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/definitions/company_information'
require 'ingenico/connect/sdk/domain/definitions/contact_details_base'
require 'ingenico/connect/sdk/domain/payment/personal_name'
require 'ingenico/connect/sdk/domain/payout/bank_transfer_payout_method_specific_input'
require 'ingenico/connect/sdk/domain/payout/create_payout_request'
require 'ingenico/connect/sdk/domain/payout/payout_customer'
require 'ingenico/connect/sdk/domain/payout/payout_references'

Definitions = Ingenico::Connect::SDK::Domain::Definitions
Payment = Ingenico::Connect::SDK::Domain::Payment
Payout = Ingenico::Connect::SDK::Domain::Payout

def example
  get_client do |client|
    amount_of_money = Definitions::AmountOfMoney.new
    amount_of_money.amount = 2345
    amount_of_money.currency_code = 'EUR'

    bank_account_iban = Definitions::BankAccountIban.new
    bank_account_iban.account_holder_name = 'Wile E. Coyote'
    bank_account_iban.iban = 'IT60X0542811101000000123456'

    address = Definitions::Address.new
    address.city = 'Burbank'
    address.country_code = 'US'
    address.house_number = '411'
    address.state = 'California'
    address.street = 'N Hollywood Way'
    address.zip = '91505'

    company_information = Definitions::CompanyInformation.new
    company_information.name = 'Acme Labs'

    contact_details = Definitions::ContactDetailsBase.new
    contact_details.email_address = 'wile.e.coyote@acmelabs.com'

    name = Payment::PersonalName.new
    name.first_name = 'Wile'
    name.surname = 'Coyote'
    name.surname_prefix = 'E.'
    name.title = 'Mr.'

    customer = Payout::PayoutCustomer.new
    customer.address = address
    customer.company_information = company_information
    customer.contact_details = contact_details
    customer.name = name

    bank_transfer_payout_method_specific_input = Payout::BankTransferPayoutMethodSpecificInput.new
    bank_transfer_payout_method_specific_input.bank_account_iban = bank_account_iban
    bank_transfer_payout_method_specific_input.customer = customer
    bank_transfer_payout_method_specific_input.payout_date = '20150102'
    bank_transfer_payout_method_specific_input.payout_text = 'Payout Acme'
    bank_transfer_payout_method_specific_input.swift_code = 'swift'

    references = Payout::PayoutReferences.new
    references.merchant_reference = 'AcmeOrder001'

    body = Payout::CreatePayoutRequest.new
    body.amount_of_money = amount_of_money
    body.bank_transfer_payout_method_specific_input = bank_transfer_payout_method_specific_input
    body.references = references

    begin
      response = client.merchant('merchantId').payouts.create(body)
    rescue Ingenico::Connect::SDK::DeclinedPayoutException => e
      handle_declined_payout(e.payout_result)
    rescue Ingenico::Connect::SDK::ApiException => e
      handle_api_errors(e.errors)
    end
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

def handle_declined_payout(payout_result)
  # handle the result here
end

def handle_api_errors(errors)
  # handle the errors here
end
