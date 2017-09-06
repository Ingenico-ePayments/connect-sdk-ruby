require 'uri'

module Ingenico::Connect::SDK

  # Contains networking and authentication data needed to communicate with the Ingenico ePayments platform
  class Session

    # Construct a new Session.
    # The session object stores the following:
    # api_endpoint::        The base url to the Ingenico ePayments platform, given as a string and converted to a {URI} object
    # connection::          An instance of the {Ingenico::Connect::SDK::Connection} class used to communicate with
    # authenticator::       An instance of the {Ingenico::Connect::SDK::Authenticator} class used for authenticating messages sent
    # meta_data_provider::  An instance of the {Ingenico::Connect::SDK::MetaDataProvider} class containing information relevant for sending requests
    def initialize(api_endpoint, connection, authenticator, meta_data_provider)
      raise ArgumentError.new('api_endpoint is required') unless api_endpoint
      raise ArgumentError.new('connection is required') unless connection
      raise ArgumentError.new('authenticator is required') unless authenticator
      raise ArgumentError.new('meta_data_provider is required') unless meta_data_provider

      uri = URI(api_endpoint)
      if uri.path.length > 0 || uri.query || uri.fragment
        raise ArgumentError.new("Base url should not contain a path, query or fragment #{uri.to_s}")
      end
      @api_endpoint = uri
      @connection = connection
      @authenticator = authenticator
      @meta_data_provider = meta_data_provider
    end

    # The base URI to the Ingenico ePayments platform as a {URI} object
    attr_reader :api_endpoint
    # An instance of the {Ingenico::Connect::SDK::Connection} class used to communicate with
    attr_reader :connection
    # An instance of the {Ingenico::Connect::SDK::Authenticator} class used for authenticating messages sent
    attr_reader :authenticator
    # An instance of the {Ingenico::Connect::SDK::MetaDataProvider} class containing information relevant for sending requests
    attr_reader :meta_data_provider
  end
end
