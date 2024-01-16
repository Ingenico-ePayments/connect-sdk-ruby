module Ingenico
  module Connect
    module SDK
      # Contains the URL, username and password of a proxy.
      #
      # @attr [String] scheme   Proxy scheme (http or https)
      # @attr [String] host     Proxy hostname
      # @attr [Integer] port    Proxy port
      # @attr [String] username Proxy authentication username
      # @attr [String] password Proxy authentication password
      class ProxyConfiguration

        # Initialize a new ProxyConfiguration from the parameter hash.
        # In order to be complete either host, port and scheme, or an address is required.
        #
        # @param args [Hash] the parameters to initialize the proxy configuration with
        # @option args [String] :host host part of the URL to the proxy.
        # @option args [Integer] :port port the proxy will be accessed through.
        # @option args [String] :scheme HTTP scheme used to communicate with the proxy (http or https).
        # @option args [String] :address full URI to the proxy excluding username and password.
        #             If given this uri takes precedence over individual host, port and scheme.
        # @option args [String] :username username used in authentication to the proxy.
        # @option args [String] :password password used to authenticate to the proxy.
        def initialize(args)
          host = args[:host]
          port = args[:port]
          username = args[:username]
          password = args[:password]
          scheme = args[:scheme] || 'http'

          # Don't switch the order, a given address overrides host, port and username
          address = args[:address]
          host = address.host if address
          port = address.port if address
          scheme = address.scheme if address

          raise ArgumentError.new('scheme is required') unless scheme and not scheme.strip.empty?
          raise ArgumentError.new('host is required') unless host and not host.strip.empty?
          raise ArgumentError.new('port is required') unless port and port > 0 and port <= 65535

          @host = host
          @port = port
          @username = username
          @password = password
          @scheme = scheme
        end

        attr_accessor :scheme
        attr_accessor :host
        attr_accessor :port

        attr_accessor :username
        attr_accessor :password

        # @return [String] a URL string representation of the proxy, excluding authentication.
        def proxy_uri
          "#{scheme}://#{host}:#{port}"
        end

        def to_s
          proxy_uri
        end

        private

        def self.get_port(address)
          port = address.port
          return port if port != -1
          return 80 if address.scheme.casecmp('http') == 0
          return 443 if address.scheme.casecmp('https') == 0
          raise ArgumentError.new('unsupported scheme: ' + address.scheme)
        end
      end
    end
  end
end
