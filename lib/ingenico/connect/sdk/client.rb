#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/api_resource'
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/logging/logging_capable'
require 'ingenico/connect/sdk/merchant/merchant_client'
require 'base64'

module Ingenico
  module Connect
    module SDK

      # GlobalCollect platform client.
      #
      # This client and all its child clients are bound to one specific value for the X-GCS-ClientMetaInfo header.
      #
      # To get a new client with a different header value, use with_client_meta_info.
      #
      # Thread safe.
      class Client < ApiResource
        include Logging::LoggingCapable

        def self.API_VERSION
          'v1'
        end

        # communicator::     Ingenico::Connect::SDK::Communicator
        # client_meta_info:: String
        def initialize(communicator, client_meta_info=nil)
          super(communicator, {'apiVersion' => Client.API_VERSION}, client_meta_info)
        end

        # client_meta_info:: JSON string containing the meta data for the client
        # Returns:: A Client which uses the passed meta data for the X-GCS-ClientMetaInfo header.
        # Raises:: Ingenico::Connect::SDK::MarshallerSyntaxException if the given clientMetaInfo is not a valid JSON string
        def with_client_meta_info(client_meta_info)
          if @client_meta_info.nil? && client_meta_info.nil?
            self
          elsif client_meta_info.nil?
            return Client.new(@communicator, nil)
          else
            # Checking to see if this is valid JSON (no JSON parse exceptions)
            @communicator.marshaller.unmarshal(client_meta_info, DataObject)
            client_meta_info = Base64.strict_encode64(client_meta_info)
            if @client_meta_info == client_meta_info
              self
            else
              return Client.new(@communicator, client_meta_info)
            end
          end
        end

        # Utility method that delegates the call to this client's communicator.
        def close_idle_connections(idle_time)
          @communicator.close_idle_connections(idle_time)
        end

        # Utility method that delegates the call to this client's communicator.
        def close_expired_connections
          @communicator.close_expired_connections
        end

        # Turns on logging using the given communicator logger.
        # communicator_logger:: Ingenico::Connect::SDK::Logging::CommunicatorLogger
        def enable_logging(communicator_logger)
          @communicator.enable_logging(communicator_logger)
        end

        # Turns off logging.
        def disable_logging
          @communicator.disable_logging
        end

        # Releases any system resources associated with this object.
        def close
          @communicator.close
        end

        # Resource /{{merchantId}}
        # merchant_id:: String
        # Returns:: {Ingenico::Connect::SDK::Merchant::MerchantClient}
        def merchant(merchant_id)
          Ingenico::Connect::SDK::Merchant::MerchantClient.new(self, {
            'merchantId' => merchant_id,
          })
        end
      end
    end
  end
end
