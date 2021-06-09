require 'yaml'

module Ingenico::Connect::SDK

  # Convenience class that constructs instances of several other classes in the SDK.
  # Provides methods to construct
  # {Ingenico::Connect::SDK::CommunicatorConfiguration}, {Ingenico::Connect::SDK::Session}, {Ingenico::Connect::SDK::Communicator} and {Ingenico::Connect::SDK::Client} instances.
  class Factory

    # Creates and returns a {Ingenico::Connect::SDK::CommunicatorConfiguration} based on the configuration in the file
    # located at _configuration_file_name_.
    #
    # @param configuration_file_name [String] Path to the configuration file to use, should be in YAML format.
    # @param api_key_id              [String] Key id for the Ingenico ePayments platform.
    # @param secret_api_key          [String] Secret key used for authentication to the Ingenico ePayments platform.
    # @return [Ingenico::Connect::SDK::CommunicatorConfiguration] The created communicator configuration
    def self.create_configuration(configuration_file_name, api_key_id, secret_api_key)
        properties = YAML::load_file(configuration_file_name)
        CommunicatorConfiguration.new(properties: properties,
                                             api_key_id: api_key_id,
                                             secret_api_key: secret_api_key)
    end

    # Creates and returns a {Ingenico::Connect::SDK::Session} from an {Ingenico::Connect::SDK::CommunicatorConfiguration}, an {Ingenico::Connect::SDK::MetaDataProvider},
    # an {Ingenico::Connect::SDK::Connection} and an {Ingenico::Connect::SDK::Authenticator}.
    # If an authenticator is not given, a {Ingenico::Connect::SDK::DefaultImpl::DefaultAuthenticator} is created
    # using the _api_key_id_ and _secret_api_key_ in the CommunicatorConfiguration.
    #
    # @param configuration      [Ingenico::Connect::SDK::CommunicatorConfiguration] configuration settings to be used by the client.
    # @param meta_data_provider [Ingenico::Connect::SDK::MetaDataProvider] stores the metadata for the communicating client.
    # @param connection         [Ingenico::Connect::SDK::Connection] connection that can be used to communicate with the Ingenico ePayments platform.
    # @param authenticator      [Ingenico::Connect::SDK::Authenticator] authenticator that can authenticate messages sent to the Ingenico ePayments platform.
    # @return [Ingenico::Connect::SDK::Session] The created session
    def self.create_session_from_configuration(configuration, meta_data_provider: nil,
                                               connection: nil, authenticator: nil)
      unless meta_data_provider
        meta_data_provider = MetaDataProvider.new(configuration.integrator,
                                                  shopping_cart_extension: configuration.shopping_cart_extension)
      end
      unless connection
        connection = DefaultImpl::DefaultConnection.new({connect_timeout: configuration.connect_timeout,
                                                        socket_timeout: configuration.socket_timeout,
                                                        max_connections: configuration.max_connections,
                                                        proxy_configuration: configuration.proxy_configuration})
      end
      unless authenticator
        authenticator = DefaultImpl::DefaultAuthenticator.new(configuration.authorization_type,
                                                 configuration.api_key_id, configuration.secret_api_key)
      end
      Session.new(configuration.api_endpoint, connection, authenticator, meta_data_provider)
    end

    # Creates and returns a {Ingenico::Connect::SDK::Session} from a file containing the communicator configuration, api_key_id, secret_api_key,
    # an {Ingenico::Connect::SDK::MetaDataProvider}, an {Ingenico::Connect::SDK::Connection} and an {Ingenico::Connect::SDK::Authenticator}.
    # If an authenticator is not given, a {Ingenico::Connect::SDK::DefaultImpl::DefaultAuthenticator} is created
    # using the _api_key_id_ and _secret_api_key_ in the CommunicatorConfiguration.
    #
    # @param configuration_file_name [String] Path to the configuration file to use, should be in YAML format.
    # @param api_key_id              [String] Key id for the Ingenico ePayments platform.
    # @param secret_api_key          [String] Secret key used for authentication to the Ingenico ePayments platform.
    # @param meta_data_provider      [Ingenico::Connect::SDK::MetaDataProvider] stores the metadata for the communicating client.
    # @param connection              [Ingenico::Connect::SDK::Connection] connection that can be used to communicate with the Ingenico ePayments platform.
    # @param authenticator           [Ingenico::Connect::SDK::Authenticator] authenticator that can authenticate messages sent to the Ingenico ePayments platform.
    # @return [Ingenico::Connect::SDK::Session] The created session
    def self.create_session_from_file(configuration_file_name, api_key_id, secret_api_key,
                                      meta_data_provider: nil, connection: nil, authenticator: nil)
      configuration = create_configuration(configuration_file_name, api_key_id, secret_api_key)
      create_session_from_configuration(configuration, meta_data_provider: meta_data_provider, connection: connection,
                                        authenticator: authenticator)
    end

    # Creates and returns an {Ingenico::Connect::SDK::Communicator} that is used for communication with the Ingenico ePayments platform.
    #
    # @param session [Ingenico::Connect::SDK::Session] session that the communicator will utilize for communication.
    # @return [Ingenico::Connect::SDK::Communicator] The created communicator
    def self.create_communicator_from_session(session)
      Communicator.new(session, DefaultImpl::DefaultMarshaller.INSTANCE)
    end

    # Creates and returns an {Ingenico::Connect::SDK::Communicator} that can be used for communication with the Ingenico ePayments platform.
    #
    # @param configuration [Ingenico::Connect::SDK::CommunicatorConfiguration] contains configuration settings to be used by the client.
    # @return [Ingenico::Connect::SDK::Communicator] The created communicator
    def self.create_communicator_from_configuration(configuration)
      session = create_session_from_configuration(configuration)
      Communicator.new(session, DefaultImpl::DefaultMarshaller.INSTANCE)
    end

    # Creates and returns an {Ingenico::Connect::SDK::Communicator} that is used for communication with the Ingenico ePayments platform.
    #
    # @param configuration_file_name [String] Path to the configuration file to use, should be in YAML format.
    # @param api_key_id              [String] Key id for the Ingenico ePayments platform.
    # @param secret_api_key          [String] Secret key used for authentication to the Ingenico ePayments platform.
    # @return [Ingenico::Connect::SDK::Communicator] The created communicator
    def self.create_communicator_from_file(configuration_file_name, api_key_id, secret_api_key)
      configuration = create_configuration(configuration_file_name, api_key_id, secret_api_key)
      session = create_session_from_configuration(configuration)
      Communicator.new(session, DefaultImpl::DefaultMarshaller.INSTANCE)
    end

    # Creates and returns an {Ingenico::Connect::SDK::Client} that provides the a high-level interface with the Ingenico ePayments platform.
    # If a code block is given, the created client is returned to the code block and closed afterwards.
    #
    # @example Providing a code block
    #           Factory.create_client_from_configuration(configuration) do |client|
    #             client.merchant(merchant_id).services.testconnection
    #           end
    #           # client is closed here
    #
    # @param configuration [Ingenico::Connect::SDK::CommunicatorConfiguration] contains configuration settings to be used by the client.
    # @return [Ingenico::Connect::SDK::Client] The created client
    def self.create_client_from_configuration(configuration)
      communicator = create_communicator_from_configuration(configuration)
      client = Client.new(communicator)
      if block_given?
        begin
          yield client
        ensure
          client.close
        end
      else
        return client
      end
    end

    # Creates and returns an {Ingenico::Connect::SDK::Client} that provides the a high-level interface with the Ingenico ePayments platform.
    # If a code block is given, the created client is returned to the code block and closed afterwards.
    #
    # @example Providing a code block
    #           Factory.create_client_from_communicator(communicator) do |client|
    #             client.merchant(merchant_id).services.testconnection
    #           end
    #           # client is closed here
    #
    # @param communicator [Ingenico::Connect::SDK::Communicator] provides network communication service for the Client
    # @return [Ingenico::Connect::SDK::Client] The created client
    def self.create_client_from_communicator(communicator)
      client = Client.new(communicator)
      if block_given?
        begin
          yield client
        ensure
          client.close
        end
      else
        return client
      end
    end

    # Creates and returns an {Ingenico::Connect::SDK::Client} that provides the a high-level interface with the Ingenico ePayments platform.
    # If a code block is given, the created client is returned to the code block and closed afterwards.
    #
    # @example Providing a code block
    #           Factory.create_client_from_session(session) do |client|
    #             client.merchant(merchant_id).services.testconnection
    #           end
    #           # client is closed here
    #
    # @param session [Ingenico::Connect::SDK::Session] session that the communicator will utilize for communication.
    # @return [Ingenico::Connect::SDK::Client] The created client
    def self.create_client_from_session(session)
      communicator = create_communicator_from_session(session)
      client = Client.new(communicator)
      if block_given?
        begin
          yield client
        ensure
          client.close
        end
      else
        return client
      end
    end

    # Creates and returns an {Ingenico::Connect::SDK::Client} that provides the a high-level interface with the Ingenico ePayments platform.
    # If a code block is given, the created client is returned to the code block and closed afterwards.
    #
    # @example Providing a code block
    #           Factory.create_client_from_file(configuration_file_name, api_key_id, secret_api_key) do |client|
    #             client.merchant(merchant_id).services.testconnection
    #           end
    #           # client is closed here
    #
    # @param configuration_file_name [String] Path to the configuration file to use, should be in YAML format.
    # @param api_key_id              [String] Key id for the Ingenico ePayments platform.
    # @param secret_api_key          [String] Secret key used for authentication to the Ingenico ePayments platform.
    # @return [Ingenico::Connect::SDK::Client] The created client
    def self.create_client_from_file(configuration_file_name, api_key_id, secret_api_key)
      communicator = create_communicator_from_file(configuration_file_name, api_key_id, secret_api_key)
      client = Client.new(communicator)
      if block_given?
        begin
          yield client
        ensure
          client.close
        end
      else
        return client
      end
    end
  end
end
