require 'uri'

module Ingenico
  module Connect
    module SDK
      # Contains networking and authentication data needed to communicate with the Ingenico ePayments platform
      #
      # @attr_reader [URI::HTTP] api_endpoint The base URI to the Ingenico ePayments platform
      # @attr_reader [Ingenico::Connect::SDK::Connection] connection Used to communicate with the Ingenico ePayments platform
      # @attr_reader [Ingenico::Connect::SDK::Authenticator] authenticator Used for authenticating messages sent
      # @attr_reader [Ingenico::Connect::SDK::MetaDataProvider] meta_data_provider Object containing information relevant for sending requests
      class Session

        # Construct a new Session.
        #
        # @param api_endpoint       [String] the base URL to the Ingenico ePayments platform
        # @param connection         [Ingenico::Connect::SDK::Connection] used to communicate with the Ingenico ePayments platform
        # @param authenticator      [Ingenico::Connect::SDK::Authenticator] used for authenticating messages sent
        # @param meta_data_provider [Ingenico::Connect::SDK::MetaDataProvider] object containing information relevant for sending requests
        def initialize(api_endpoint, connection, authenticator, meta_data_provider)
          raise ArgumentError.new('api_endpoint is required') unless api_endpoint
          raise ArgumentError.new('connection is required') unless connection
          raise ArgumentError.new('authenticator is required') unless authenticator
          raise ArgumentError.new('meta_data_provider is required') unless meta_data_provider

          uri = URI(api_endpoint)
          if uri.path.length > 0 || uri.query || uri.fragment
            raise ArgumentError.new("Base URL should not contain a path, query or fragment #{uri.to_s}")
          end
          @api_endpoint = uri
          @connection = connection
          @authenticator = authenticator
          @meta_data_provider = meta_data_provider
        end

        attr_reader :api_endpoint
        attr_reader :connection
        attr_reader :authenticator
        attr_reader :meta_data_provider
      end
    end
  end
end
