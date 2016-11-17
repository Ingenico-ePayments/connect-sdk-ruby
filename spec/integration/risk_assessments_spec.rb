require 'spec_helper'
require 'integration_setup'
require 'webmock/rspec'
require 'ingenico/connect/sdk/domain/definitions/bank_account_bban'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/riskassessments/customer_risk_assessment'
require 'ingenico/connect/sdk/domain/riskassessments/order_risk_assessment'
require 'ingenico/connect/sdk/domain/riskassessments/risk_assessment_bank_account'

describe 'RiskAssessments' do

  before(:context){WebMock.allow_net_connect!}
  after(:context){WebMock.disable_net_connect!}

  it 'can let the GlobalCollect platform assess risks' do
    bank_account_bban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban.new
    bank_account_bban.country_code = 'DE'
    bank_account_bban.account_number = '0532013000'
    bank_account_bban.bank_code = '37040044'
    amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new
    amount_of_money.amount = 100
    amount_of_money.currency_code = 'EUR'
    customer = Ingenico::Connect::SDK::Domain::Riskassessments::CustomerRiskAssessment.new
    customer.locale = 'en_GB'
    order = Ingenico::Connect::SDK::Domain::Riskassessments::OrderRiskAssessment.new
    order.amount_of_money = amount_of_money
    order.customer = customer
    body = Ingenico::Connect::SDK::Domain::Riskassessments::RiskAssessmentBankAccount.new
    body.order = order
    body.bank_account_bban = bank_account_bban

    Integration.init_client(false) do |client|
      response = client.merchant(Integration::MERCHANT_ID).riskassessments.bankaccounts(body)
      expect(response.results.length).to be > 0
    end
  end
end
