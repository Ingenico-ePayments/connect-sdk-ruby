require 'spec_helper'
require 'integration_setup'
require 'webmock/rspec'
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/meta_data_provider'
require 'ingenico/connect/sdk/request_header'
require 'ingenico/connect/sdk/merchant/products/directory_params'

describe 'multiline headers' do

  before(:context){WebMock.allow_net_connect!}
  after(:context){WebMock.disable_net_connect!}

  it 'should be accepted by the ingenico platform' do
    multi_line_header = " some value  \r\n \n with        a liberal amount     of \r\n  spaces    "
    configuration = Integration.init_communicator_configuration
    meta_data_provider = Ingenico::Connect::SDK::MetaDataProvider.new('Ingenico', additional_request_headers:
                                                       [Ingenico::Connect::SDK::RequestHeader.new('X-GCS-MultiLineHeader', multi_line_header)])
    session = Ingenico::Connect::SDK::Factory.create_session_from_configuration(configuration, meta_data_provider:
                                                       meta_data_provider)

    params = Ingenico::Connect::SDK::Merchant::Products::DirectoryParams.new
    params.country_code = 'NL'
    params.currency_code = 'EUR'

    init_client_from_session(session) do |client|
      response = client.merchant(Integration::MERCHANT_ID).products.directory(809, params)
      expect(response.entries.length).to be > 0
    end
  end
end

def init_client_from_session(session)
    yield client = Ingenico::Connect::SDK::Factory.create_client_from_session(session).with_client_meta_info('{"test":"test"}')
    client.close
end
