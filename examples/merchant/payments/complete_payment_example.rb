#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/definitions/card_without_cvv'
require 'ingenico/connect/sdk/domain/payment/complete_payment_card_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/complete_payment_request'

Definitions = Ingenico::Connect::SDK::Domain::Definitions
Payment = Ingenico::Connect::SDK::Domain::Payment

def example
  get_client do |client|
    card = Definitions::CardWithoutCvv.new
    card.card_number = '67030000000000003'
    card.cardholder_name = 'Wile E. Coyote'
    card.expiry_date = '1220'

    card_payment_method_specific_input = Payment::CompletePaymentCardPaymentMethodSpecificInput.new
    card_payment_method_specific_input.card = card

    body = Payment::CompletePaymentRequest.new
    body.card_payment_method_specific_input = card_payment_method_specific_input

    response = client.merchant('merchantId').payments.complete('paymentId', body)
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
