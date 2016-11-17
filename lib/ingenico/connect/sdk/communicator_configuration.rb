module Ingenico::Connect::SDK

  # A CommunicatorConfiguration stores all data used to initialize an {Ingenico::Connect::SDK::Communicator}. It stores the following:
  #
  # api_endpoint::            The base url to the GlobalCollect platform.
  # api_key_id::              The identifier of the _secret_api_key_ used to authenticate requests.
  # secret_api_key::          The key used to authenticate requests sent to the GlobalCollect platform.
  # authorization_type::      String describing the authorization protocol to follow.
  # connect_timeout::         The number of seconds before a connection attempt with the GlobalCollect platform times out.
  # socket_timeout::          The number of seconds before a timeout occurs
  #                           when transmitting data to or from the GlobalCollect platform.
  # max_connections::         The number of connections with the GlobalCollect platform
  #                           that are kept alive in the connection pool. These connections will be reused when possible.
  # proxy_configuration::     {Ingenico::Connect::SDK::ProxyConfiguration} instance that stores the url to a proxy to be used in all communication,
  #                           or nil if no proxy should be used.
  # integrator::              String
  # shopping_cart_extension:: {Ingenico::Connect::SDK::Domain::Metadata::ShoppingCartExtension} that stores shopping cart-related metadata.
  class CommunicatorConfiguration < EndpointConfiguration

    # Creates a new CommunicatorConfiguration instance, it accepts the following arguments:
    #
    # properties::              A hash that may contain any of the other parameters.
    #                           If a parameter is given in both the _properties_ and separately,
    #                           the separate value takes precedence.
    # api_endpoint::            The base url to the GlobalCollect platform.
    # api_key_id::              The identifier of the _secret_api_key_ used to authenticate requests.
    # secret_api_key::          The key used to authenticate requests sent to the GlobalCollect platform.
    # authorization_type::      String describing the authorization protocol to follow.
    # connect_timeout::         The number of seconds before a connection attempt with the GlobalCollect platform times out.
    # socket_timeout::          The number of seconds before a timeout occurs
    #                           when transmitting data to or from the GlobalCollect platform.
    # max_connections::         The number of connections with the GlobalCollect platform
    #                           that are kept alive in the connection pool. These connections will be reused when possible.
    # proxy_configuration::     {Ingenico::Connect::SDK::ProxyConfiguration} instance that stores the url to a proxy to be used in all communication,
    #                           or nil if no proxy should be used.
    # integrator::              String
    # shopping_cart_extension:: {Ingenico::Connect::SDK::Domain::Metadata::ShoppingCartExtension} that stores shopping cart-related metadata.
    #
    # If a _properties_ object is given, it will be parsed like a hash in order to read these attributes.
    # If a value is given in both the _properties_ hash and as a separate parameter,
    # the separate parameter will take precedence over the value in the properties.
    def initialize(properties: nil, api_endpoint: nil, api_key_id: nil,
                   secret_api_key: nil, authorization_type: nil,
                   connect_timeout: nil, socket_timeout: nil,
                   max_connections: nil, proxy_configuration: nil,
                   integrator: nil, shopping_cart_extension: nil)
      if properties
        super(properties, 'connect.api')
        unless properties.nil?
          @authorization_type = DefaultImpl::AuthorizationType.get_authorization(
              properties['connect.api.authorizationType'])
        end
      end
      if api_endpoint
        @api_endpoint = api_endpoint
      end
      if api_key_id
        @api_key_id = api_key_id
      end
      if secret_api_key
        @secret_api_key = secret_api_key
      end
      if authorization_type
        @authorization_type = authorization_type
      end
      if connect_timeout
        @connect_timeout = connect_timeout
      end
      if socket_timeout
        @socket_timeout = socket_timeout
      end
      if max_connections
        @max_connections = max_connections
      end
      if proxy_configuration
        @proxy_configuration = proxy_configuration
      end
      if integrator
        @integrator = integrator
      end
      if shopping_cart_extension
        @shopping_cart_extension = shopping_cart_extension
      end
    end

    # Base URL to the GlobalCollect platform
    attr_accessor :api_endpoint

    # Identifier of the _secret_api_key_ used in authentication.
    attr_accessor :api_key_id

    # Secret key used in authentication
    attr_accessor :secret_api_key

    # String representing the authentication algorithm used
    attr_accessor :authorization_type
  end
end
