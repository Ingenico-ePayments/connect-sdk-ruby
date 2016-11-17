require 'spec_helper'
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/token/customer_token'
require 'ingenico/connect/sdk/domain/token/token_card'
require 'ingenico/connect/sdk/domain/token/token_card_data'
require 'ingenico/connect/sdk/domain/token/token_response'

DataObject ||= Ingenico::Connect::SDK::DataObject
DefaultMarshaller ||= Ingenico::Connect::SDK::DefaultImpl::DefaultMarshaller
Token ||= Ingenico::Connect::SDK::Domain::Token

class TokenResponseWithExtraField < Token::TokenResponse
  attr_accessor :dummy
end

describe DefaultMarshaller do
  context 'unmarshal()' do
    it 'should unmarshal extra fields' do
      token = TokenResponseWithExtraField.new
      token.card = Token::TokenCard.new
      token.card.customer = Token::CustomerToken.new
      token.card.customer.billing_address = Ingenico::Connect::SDK::Domain::Definitions::Address.new
      token.card.customer.billing_address.country_code = 'NL'
      token.card.data = Token::TokenCardData.new
      token.dummy = 'foobar'
      # marshal the extended token and unmarshal it as a regular token response
      unmarshalled = DefaultMarshaller.INSTANCE.unmarshal(DefaultMarshaller.INSTANCE.marshal(token), Token::TokenResponse)

      expect(unmarshalled.card).to_not be_nil
      expect(unmarshalled.card.customer).to_not be_nil
      expect(unmarshalled.card.customer.billing_address).to_not be_nil
      expect(unmarshalled.card.customer.billing_address.country_code).to eq('NL')
      expect(token.card.data).to_not be_nil
    end
  end
end
