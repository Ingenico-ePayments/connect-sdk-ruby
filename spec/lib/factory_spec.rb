require 'spec_helper'
require 'uri'

Factory ||= Ingenico::Connect::SDK::Factory

describe 'Factory' do
  it 'can initialize configurations' do
    configuration = Factory.create_configuration(PROPERTIES_URI, API_KEY_ID, SECRET_API_KEY)

    expect(configuration.api_endpoint).to eq('https://eu.sandbox.api-ingenico.com')
    expect(configuration.authorization_type).to eq('v1HMAC')
    expect(configuration.connect_timeout).to eq(-1)
    expect(configuration.socket_timeout).to eq(-1)
    expect(configuration.max_connections).to eq(100)
    expect(configuration.api_key_id).to eq(API_KEY_ID)
    expect(configuration.secret_api_key).to eq(SECRET_API_KEY)
    expect(configuration.proxy_configuration).to be_nil
  end

  it 'can initialize communicators' do
    communicator = Factory.create_communicator_from_file(PROPERTIES_URI, API_KEY_ID, SECRET_API_KEY)
    session = communicator.instance_variable_get(:@session)
    connection = session.connection
    authenticator = session.authenticator
    meta_data_provider = session.meta_data_provider
    request_headers = meta_data_provider.meta_data_headers

    expect(communicator.marshaller).to be(Ingenico::Connect::SDK::DefaultImpl::DefaultMarshaller.INSTANCE)
    expect(connection).to be_an_instance_of(Ingenico::Connect::SDK::DefaultImpl::DefaultConnection)
    expect(authenticator).to be_an_instance_of(Ingenico::Connect::SDK::DefaultImpl::DefaultAuthenticator)
    expect(meta_data_provider).to be_an_instance_of(Ingenico::Connect::SDK::MetaDataProvider)

    expect(authenticator.instance_variable_get(:@authorization_type))
        .to eq(Ingenico::Connect::SDK::DefaultImpl::AuthorizationType.get_authorization('v1HMAC'))
    expect(authenticator.instance_variable_get(:@api_key_id)).to eq(API_KEY_ID)
    expect(authenticator.instance_variable_get(:@secret_api_key)).to eq(SECRET_API_KEY)

    expect(request_headers.length).to eq(1)
    expect(request_headers[0].name).to eq('X-GCS-ServerMetaInfo')
  end
end
