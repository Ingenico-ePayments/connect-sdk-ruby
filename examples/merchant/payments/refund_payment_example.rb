#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/api_exception'
require 'ingenico/connect/sdk/declined_refund_exception'
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/definitions/contact_details_base'
require 'ingenico/connect/sdk/domain/payment/address_personal'
require 'ingenico/connect/sdk/domain/payment/personal_name'
require 'ingenico/connect/sdk/domain/refund/refund_request'
require 'ingenico/connect/sdk/domain/refund/bank_refund_method_specific_input'
require 'ingenico/connect/sdk/domain/refund/refund_customer'
require 'ingenico/connect/sdk/domain/refund/refund_references'

Definitions = Ingenico::Connect::SDK::Domain::Definitions
Refund = Ingenico::Connect::SDK::Domain::Refund
Payment = Ingenico::Connect::SDK::Domain::Payment

def example
  get_client do |client|
    amount_of_money = Definitions::AmountOfMoney.new
    amount_of_money.amount = 1
    amount_of_money.currency_code = 'EUR'

    bank_account_iban = Definitions::BankAccountIban.new
    bank_account_iban.iban = 'NL53INGB0000000036'

    bank_refund_method_specific_input = Refund::BankRefundMethodSpecificInput.new
    bank_refund_method_specific_input.bank_account_iban = bank_account_iban

    name = Payment::PersonalName.new
    name.surname = 'Coyote'

    address = Payment::AddressPersonal.new
    address.country_code = 'US'
    address.name = name

    contact_details = Definitions::ContactDetailsBase.new
    contact_details.email_address = 'wile.e.coyote@acmelabs.com'
    contact_details.email_message_type = 'html'

    customer = Refund::RefundCustomer.new
    customer.address = address
    customer.contact_details = contact_details

    refund_references = Refund::RefundReferences.new
    refund_references.merchant_reference = 'AcmeOrder0001'

    body = Refund::RefundRequest.new
    body.amount_of_money = amount_of_money
    body.bank_refund_method_specific_input = bank_refund_method_specific_input
    body.customer = customer
    body.refund_date = '20140306'
    body.refund_references = refund_references

    begin
      response = client.merchant('merchantId').payments().refund('paymentId', body)
    rescue Ingenico::Connect::SDK::DeclinedRefundException => e
      handle_declined_refund(e.refund_result)
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

def handle_declined_refund(refund_result)
  # handle the result here
end

def  handle_api_errors(errors)
  # handle the errors here
end
