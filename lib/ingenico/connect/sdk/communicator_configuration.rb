require 'ingenico/connect/sdk/defaultimpl/authorization_type'
require 'ingenico/connect/sdk/endpoint_configuration'

module Ingenico
  module Connect
    module SDK
      # A CommunicatorConfiguration stores all data used to initialize an {Ingenico::Connect::SDK::Communicator}.
      #
      # @attr [String] api_endpoint       Base URL to the Ingenico ePayments platform
      # @attr [String] api_key_id         Identifier of the _secret_api_key_ used in authentication.
      # @attr [String] secret_api_key     Secret key used in authentication
      # @attr [String] authorization_type String representing the authentication algorithm used
      class CommunicatorConfiguration < EndpointConfiguration

        # Creates a new CommunicatorConfiguration instance.
        #
        # If a _properties_ object is given, it will be parsed like a hash in order to read these attributes.
        # If a value is given in both the _properties_ hash and as a separate parameter,
        # the separate parameter will take precedence over the value in the properties.
        #
        # @param properties              [Hash] hash that may contain any of the other parameters.
        # @param api_endpoint            [String] the base URL to the Ingenico ePayments platform.
        # @param api_key_id              [String] the identifier of the _secret_api_key_ used to authenticate requests.
        # @param secret_api_key          [String] the key used to authenticate requests sent to the Ingenico ePayments platform.
        # @param authorization_type      [String] string describing the authorization protocol to follow.
        # @param connect_timeout         [Integer] the number of seconds before a connection attempt with the Ingenico ePayments platform times out.
        # @param socket_timeout          [Integer] the number of seconds before a timeout occurs when transmitting data to or from the Ingenico ePayments platform.
        # @param max_connections         [Integer] the number of connections with the Ingenico ePayments platform that are kept alive in the connection pool.
        #                                These connections will be reused when possible.
        # @param proxy_configuration     [Ingenico::Connect::SDK::ProxyConfiguration] stores the URL to a proxy to be used in all communication,
        #                                or nil if no proxy should be used.
        # @param integrator              [String] name of the integrator
        # @param shopping_cart_extension [Ingenico::Connect::SDK::Domain::Metadata::ShoppingCartExtension] stores shopping cart-related metadata.
        # @see EndpointConfiguration#initialize
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

        attr_accessor :api_endpoint
        attr_accessor :api_key_id
        attr_accessor :secret_api_key
        attr_accessor :authorization_type
      end
    end
  end
end
