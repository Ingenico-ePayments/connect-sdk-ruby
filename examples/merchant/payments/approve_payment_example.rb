#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/payment/approve_payment_non_sepa_direct_debit_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/approve_payment_request'
require 'ingenico/connect/sdk/domain/payment/order_approve_payment'
require 'ingenico/connect/sdk/domain/payment/order_references_approve_payment'

Payment = Ingenico::Connect::SDK::Domain::Payment

def example
  get_client do |client|
    direct_debit_payment_method_specific_input = Payment::ApprovePaymentNonSepaDirectDebitPaymentMethodSpecificInput.new
    direct_debit_payment_method_specific_input.date_collect = '20150201'
    direct_debit_payment_method_specific_input.token = 'bfa8a7e4-4530-455a-858d-204ba2afb77e'

    references = Payment::OrderReferencesApprovePayment.new
    references.merchant_reference = 'AcmeOrder0001'

    order = Payment::OrderApprovePayment.new
    order.references = references

    body = Payment::ApprovePaymentRequest.new
    body.amount = 2980
    body.direct_debit_payment_method_specific_input = direct_debit_payment_method_specific_input
    body.order = order

    response = client.merchant('merchantId').payments.approve('paymentId', body)
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
