require 'spec_helper'
require 'integration_setup'
require 'webmock/rspec'
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/definitions/card_without_cvv'
require 'ingenico/connect/sdk/domain/token/create_token_request'
require 'ingenico/connect/sdk/domain/token/customer_token'
require 'ingenico/connect/sdk/domain/token/token_card'
require 'ingenico/connect/sdk/domain/token/token_card_data'
require 'ingenico/connect/sdk/merchant/tokens/delete_token_params'

describe 'token' do

  before(:context){WebMock.allow_net_connect!}
  after(:context){WebMock.disable_net_connect!}

  it 'can be created and deleted' do
    billing_address = Ingenico::Connect::SDK::Domain::Definitions::Address.new
    billing_address.country_code = 'NL'
    customer = Ingenico::Connect::SDK::Domain::Token::CustomerToken.new
    customer.billing_address = billing_address
    card_without_ccv = Ingenico::Connect::SDK::Domain::Definitions::CardWithoutCvv.new
    card_without_ccv.cardholder_name = 'Jan'
    card_without_ccv.issue_number = '12'
    card_without_ccv.card_number = '4567350000427977'
    card_without_ccv.expiry_date = '0820'
    card_data = Ingenico::Connect::SDK::Domain::Token::TokenCardData.new
    card_data.card_without_cvv = card_without_ccv
    card = Ingenico::Connect::SDK::Domain::Token::TokenCard.new
    card.customer = customer
    card.data = card_data
    create_token_request = Ingenico::Connect::SDK::Domain::Token::CreateTokenRequest.new
    create_token_request.payment_product_id = 1
    create_token_request.card = card

    Integration.init_client(false) do |client|
      token_response = client.merchant(Integration::MERCHANT_ID).tokens.create(create_token_request)
      expect(token_response.token).to_not be_nil
      client.merchant(Integration::MERCHANT_ID).tokens.delete(token_response.token, Ingenico::Connect::SDK::Merchant::Tokens::DeleteTokenParams.new)
    end
  end
end
