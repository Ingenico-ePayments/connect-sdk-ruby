#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/api_exception'
require 'ingenico/connect/sdk/declined_refund_exception'
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/refund/refund_references'
require 'ingenico/connect/sdk/domain/refund/refund_request'

Definitions = Ingenico::Connect::SDK::Domain::Definitions
Refund = Ingenico::Connect::SDK::Domain::Refund

def example
  get_client do |client|
    amount_of_money = Definitions::AmountOfMoney.new
    amount_of_money.amount = 500
    amount_of_money.currency_code = 'EUR'

    refund_references = Refund::RefundReferences.new
    refund_references.merchant_reference = 'AcmeOrder0001'

    body = Refund::RefundRequest.new
    body.amount_of_money = amount_of_money
    body.refund_references = refund_references

    begin
      response = client.merchant('merchantId').captures.refund('captureId', body)
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

def handle_api_errors(errors)
  # handle the errors here
end
