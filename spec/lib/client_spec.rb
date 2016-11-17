require 'spec_helper'

describe 'Client' do
  Factory ||= Ingenico::Connect::SDK::Factory
  Connection ||= Ingenico::Connect::SDK::Connection
  PooledConnection ||= Ingenico::Connect::SDK::PooledConnection

  it 'should return properly modified clients from *with_client_meta_info*' do
    client1 = Factory.create_client_from_file(PROPERTIES_URI, API_KEY_ID, SECRET_API_KEY)
    client2 = client1.with_client_meta_info(nil)
    client_meta_info = Ingenico::Connect::SDK::DefaultImpl::DefaultMarshaller.INSTANCE.marshal({test: 'test'})
    client3 = client1.with_client_meta_info(client_meta_info)
    client4 = client3.with_client_meta_info(client_meta_info)
    client5 = client3.with_client_meta_info(nil)


    expect(client1.instance_variable_get(:@client_headers)).to be_nil
    expect(client1).to be(client2)
    expect(client1).to_not be(client3)
    # Check if client3 has the meta_info stored
    client3_info = client3.instance_variable_get(:@client_meta_info)
    meta_info_encoded = Base64.strict_encode64(client_meta_info.encode('utf-8'))
    expect(client3_info).to eq(meta_info_encoded)

    expect(client3).to be(client4)
    expect(client3).to_not be(client5)
    expect(client5.instance_variable_get(:@client_headers)).to be_nil
  end

  it 'should not close idle connections of an unpooled connection' do
    conn = Connection.allocate  # Create fake (uninitialized) connection
    session = Factory.create_session_from_file(PROPERTIES_URI, API_KEY_ID, SECRET_API_KEY, connection: conn)
    client = Factory.create_client_from_session(session)

    expect(session.connection).to_not receive(:close_idle_connections)

    client.close_idle_connections(0.500)
  end

  it 'should close idle connections of a pooled connection' do
    conn = PooledConnection.allocate  # Create fake (uninitialized) connection
    session = Factory.create_session_from_file(PROPERTIES_URI, API_KEY_ID, SECRET_API_KEY, connection: conn)
    client = Factory.create_client_from_session(session)

    expect(session.connection).to receive(:close_idle_connections).with(0.500)

    client.close_idle_connections(0.500)
  end

  it 'should not close expired connections of an unpooled connection' do
    conn = Connection.allocate  # Create fake (uninitialized) connection
    session = Factory.create_session_from_file(PROPERTIES_URI, API_KEY_ID, SECRET_API_KEY, connection: conn)
    client = Factory.create_client_from_session(session)

    expect(session.connection).to_not receive(:close_expired_connections)

    client.close_expired_connections
  end

  it 'should close expired connections of a pooled connection' do
    conn = PooledConnection.allocate  # Create fake (uninitialized) connection
    session = Factory.create_session_from_file(PROPERTIES_URI, API_KEY_ID, SECRET_API_KEY, connection: conn)
    client = Factory.create_client_from_session(session)

    expect(session.connection).to receive(:close_expired_connections)

    client.close_expired_connections
  end
end
