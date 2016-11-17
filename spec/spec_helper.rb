require 'rspec'
require 'webmock/rspec'

require 'ingenico/connect/sdk'
require 'comparable_extension'

RSpec.configure do |config|

  WebMock.disable_net_connect! # make it explicit

  config.order = 'random'
  config.profile_examples = 5 # show the slowest tests

  # declaration of constants to use throughout the tests
  config.before(:suite) do
    PROPERTIES_URI = File.expand_path('../../spec/fixtures/resources/properties.yml', __FILE__)
    API_KEY_ID = 'somekey'
    SECRET_API_KEY = 'someSecret'
    CLIENT = Ingenico::Connect::SDK::Factory.create_client_from_file(PROPERTIES_URI, API_KEY_ID, SECRET_API_KEY)
  end

  config.after(:suite) { CLIENT.close }
end
