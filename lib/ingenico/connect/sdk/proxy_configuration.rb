module Ingenico::Connect::SDK

  # Contains the url, username and password of a proxy.
  class ProxyConfiguration

    # Initialize a new ProxyConfiguration from the parameter hash.
    # In order to be complete either host, port and scheme, or an address is required.
    # Arguments read from the hash are:
    # host::      Host part of the url to the proxy.
    # port::      Port the proxy will be accessed through.
    # scheme::    HTTP scheme used to communicate with the proxy (HTTP or HTTPS).
    # address::   Full uri to the proxy excluding username and password.
    #             If given this uri takes precedence over individual host, port and scheme.
    # username::  Username used in authentication to the proxy.
    # password::  Password used to authenticate to the proxy.
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

    # proxy scheme (http or https)
    attr_accessor :scheme

    # proxy hostname
    attr_accessor :host

    # proxy port
    attr_accessor :port

    # proxy authentication username
    attr_accessor :username

    # proxy authentication password
    attr_accessor :password

    # Returns a url string representation of the proxy, excluding authentication.
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
