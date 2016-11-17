require 'spec_helper'
require 'yaml'
require 'integration_setup'
require 'webmock/rspec'
require 'ingenico/connect/sdk/merchant/productgroups/get_productgroup_params'

describe 'PaymentProductGroups' do

  before(:context){WebMock.allow_net_connect!}
  after(:context){WebMock.disable_net_connect!}

  it 'can be accessed' do

    params = Ingenico::Connect::SDK::Merchant::Productgroups::GetProductgroupParams.new
    params.country_code = 'NL'
    params.currency_code = 'EUR'

    Integration.init_client(false) do |client|
      response = client.merchant(Integration::MERCHANT_ID).productgroups.get('cards', params)
      expect(response.id).to eq('cards')
    end
  end
end
