require 'spec_helper'
require 'yaml'

module Integration
  MERCHANT_ID = ENV['connect_api_merchantId']
  API_KEY_ID = ENV['connect_api_apiKeyId']
  SECRET_API_KEY = ENV['connect_api_secretApiKey']
  raise 'could not access environment variable connect_api_merchantId required for testing' unless MERCHANT_ID
  raise 'could not access environment variable connect_api_apiKeyId required for testing' unless API_KEY_ID
  raise 'could not access environment variable connect_api_secretApiKey required for testing' unless SECRET_API_KEY
  PROPERTIES_URI = File.absolute_path(File.join(__FILE__, '../fixtures/resources/properties.yml'))
  PROPERTIES_URI_PROXY = File.absolute_path(File.join(__FILE__, '../fixtures/resources/properties.proxy.yml'))

  def self.create_uri(scheme, host, port)
    if port == -1
      "#{scheme}://#{host}"
    else
      "#{scheme}://#{host}:#{port.to_s}"
    end
  end

  def self.init_communicator_configuration(properties_url: PROPERTIES_URI, max_connections: nil)
    yaml = YAML.load_file(properties_url)
    configuration = Ingenico::Connect::SDK::CommunicatorConfiguration.new(properties: yaml,
                                                       api_endpoint: 'https://eu.sandbox.api-ingenico.com',
                                                       authorization_type: 'v1HMAC',
                                                       api_key_id: API_KEY_ID,
                                                       secret_api_key: SECRET_API_KEY,
                                                       max_connections: max_connections)
    host = ENV['connect_api_endpoint_host']
    if host
      scheme = ENV.fetch('connect_api_endpoint_scheme', 'https')
      port = ENV.fetch('connect_api_endpoint_port', -1)
      configuration.api_endpoint = create_uri(scheme, host, port)
    end
    configuration
  end

  def self.init_client(with_proxy, max_connections = nil)
    if with_proxy
      url = PROPERTIES_URI_PROXY
    else
      url = PROPERTIES_URI
    end
    yaml = YAML.load_file(url)
    configuration = init_communicator_configuration(properties_url: url, max_connections: max_connections)
    yield client = Ingenico::Connect::SDK::Factory.create_client_from_configuration(configuration).with_client_meta_info('{"test":"test"}')
    client.close
  end
end
