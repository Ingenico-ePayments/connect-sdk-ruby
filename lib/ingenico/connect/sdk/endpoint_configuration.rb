require 'uri'
require 'ingenico/connect/sdk/domain/metadata/shopping_cart_extension'
require 'ingenico/connect/sdk/proxy_configuration'

module Ingenico
  module Connect
    module SDK
      # Base class for configuration classes in the SDK.
      #
      # @attr [String] api_endpoint     The base URL to the Ingenico ePayments platform.
      # @attr [Integer] connect_timeout The number of seconds before a connection attempt with the Ingenico ePayments platform times out.
      # @attr [Integer] socket_timeout  The number of seconds before a timeout occurs when transmitting data to or from the Ingenico ePayments platform.
      # @attr [Integer] max_connections The number of connections with the Ingenico ePayments platform that are kept alive in the connection pool.
      #       These connections will be reused when possible.
      # @attr [Ingenico::Connect::SDK::ProxyConfiguration] proxy_configuration Proxy settings.
      # @attr [String] integrator       Name of the integrator
      # @attr [Ingenico::Connect::SDK::Domain::Metadata::ShoppingCartExtension] shopping_cart_extension Shopping cart-related metadata.
      class EndpointConfiguration
        @@DEFAULT_MAX_CONNECTIONS = 10

        # The default number of connections that are kept alive in the connection pool.
        # Used if _maxConnections_ is not present in the properties.
        def self.DEFAULT_MAX_CONNECTIONS
          @@DEFAULT_MAX_CONNECTIONS
        end

        # Initializes a new EndpointConfiguration.
        #
        # The given _properties_ is searched for settings using properties[prefix + '.setting_name']
        # The following settings are searched:
        #
        # endpoint::                This property is searched for *endpoint.host*, *endpoint.scheme* and *endpoint.port*.
        #                           The found host, scheme and port are used to construct the base URL to the Ingenico ePayments platform.
        # connectTimeout::          The number of seconds before a connection attempt with the Ingenico ePayments platform times out.
        # socketTimeout::           The number of seconds before a timeout occurs
        #                           when transmitting data to or from the Ingenico ePayments platform.
        # maxConnections::          The number of connections with the Ingenico ePayments platform
        #                           that are kept alive in the connection pool. These connections will be reused when possible.
        # proxy::                   This property is searched for *proxy.uri*, *proxy.username* and *proxy.password*.
        #                           The found URI, username and password are used
        #                           for connecting to the Ingenico ePayments platform using a proxy.
        # integrator::              Name of the integrator
        # shoppingCartExtension::   Will be used to initialize a {Ingenico::Connect::SDK::Domain::Metadata::ShoppingCartExtension}.
        def initialize(properties = nil, prefix = nil)
          unless properties.nil?
            @api_endpoint = get_endpoint(properties, prefix)
            @connect_timeout = properties[prefix + '.connectTimeout']
            @socket_timeout = properties[prefix + '.socketTimeout']
            @max_connections = get_property(properties, prefix + '.maxConnections', @@DEFAULT_MAX_CONNECTIONS)
            proxy_uri = properties[prefix + '.proxy.uri']
            proxy_user = properties[prefix + '.proxy.username']
            proxy_pass = properties[prefix + '.proxy.password']

            unless proxy_uri.nil?
              @proxy_configuration = ProxyConfiguration.new(address: URI(proxy_uri),
                                                            username: proxy_user,
                                                            password: proxy_pass)
            end
            @integrator = properties[prefix + '.integrator']
            @shopping_cart_extension = get_shopping_cart_extension(properties, prefix)
          end
        end

        protected

        def set_endpoint(endpoint)
          if !endpoint.nil? && !endpoint.path.nil?
            raise ArgumentError.new('endpoint should not contain a path')
          end
          if !endpoint.nil? && (!endpoint.userinfo.nil? || !endpoint.query.nil? ||
            !endpoint.fragment.nil?)
            raise ArgumentError('endpoint should not contain user info, query or fragment')
          end
          @api_endpoint = endpoint
        end

        private

        def get_property(properties, key, default_value)
          property_value = properties[key]
          if property_value.nil?
            default_value
          else
            property_value
          end
        end

        def get_endpoint(properties, prefix)
          host = properties[prefix + '.endpoint.host']
          scheme = properties[prefix + '.endpoint.scheme']
          port = properties[prefix + '.endpoint.port']
          if scheme.nil?
            scheme = 'https'
          end
          if port.nil?
            port = -1
          end
          create_uri(scheme, host, port)
        end

        def create_uri(scheme, host, port)
          if port == -1
            "#{scheme}://#{host}"
          else
            "#{scheme}://#{host}:#{port.to_s}"
          end
        end

        def get_shopping_cart_extension(properties, prefix)
          creator = properties[prefix + '.shoppingCartExtension.creator']
          name = properties[prefix + '.shoppingCartExtension.name']
          version = properties[prefix + '.shoppingCartExtension.version']
          extension_id = properties[prefix + '.shoppingCartExtension.extensionId']
          if creator.nil? && name.nil? && version.nil? && extension_id.nil?
            nil
          else
            Domain::Metadata::ShoppingCartExtension.new(creator, name, version, extension_id)
          end
        end

        public

        attr_reader :api_endpoint

        attr_accessor :connect_timeout
        attr_accessor :socket_timeout
        attr_accessor :max_connections

        attr_accessor :proxy_configuration

        attr_accessor :integrator
        attr_accessor :shopping_cart_extension
      end
    end
  end
end
