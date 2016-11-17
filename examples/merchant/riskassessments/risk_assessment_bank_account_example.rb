#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/definitions/bank_account_bban'
require 'ingenico/connect/sdk/domain/riskassessments/risk_assessment_bank_account'
require 'ingenico/connect/sdk/domain/riskassessments/customer_risk_assessment'
require 'ingenico/connect/sdk/domain/riskassessments/order_risk_assessment'

Definitions = Ingenico::Connect::SDK::Domain::Definitions
Riskassessments = Ingenico::Connect::SDK::Domain::Riskassessments

def example
  get_client do |client|
    bank_account_bban = Definitions::BankAccountBban.new
    bank_account_bban.account_number = '0532013000'
    bank_account_bban.bank_code = '37040044'
    bank_account_bban.country_code = 'DE'

    amount_of_money = Definitions::AmountOfMoney.new
    amount_of_money.amount = 100
    amount_of_money.currency_code = 'EUR'

    billing_address = Definitions::Address.new
    billing_address.country_code = 'US'

    customer = Riskassessments::CustomerRiskAssessment.new
    customer.billing_address = billing_address
    customer.locale = 'en_US'

    order = Riskassessments::OrderRiskAssessment.new
    order.amount_of_money = amount_of_money
    order.customer = customer

    body = Riskassessments::RiskAssessmentBankAccount.new
    body.bank_account_bban = bank_account_bban
    body.order = order

    response = client.merchant('merchantId').riskassessments().bankaccounts(body)
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
