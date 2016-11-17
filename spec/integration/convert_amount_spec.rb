require 'rspec'
require 'spec_helper'
require 'integration_setup'
require 'webmock/rspec'
require 'ingenico/connect/sdk/merchant/services/convert_amount_params'

describe 'convertAmount with the server' do

  before(:context){WebMock.allow_net_connect!}
  after(:context){WebMock.disable_net_connect!}

  it 'communicates with the GlobalCollect platform' do

    request = Ingenico::Connect::SDK::Merchant::Services::ConvertAmountParams.new
    request.amount = 123
    request.source = 'USD'
    request.target = 'EUR'

    Integration.init_client(false) do |client|
      response = client.merchant(Integration::MERCHANT_ID).services.convert_amount(request)
      expect(response).to_not be_nil
      expect(response.converted_amount).to be > 0
    end
  end
end
