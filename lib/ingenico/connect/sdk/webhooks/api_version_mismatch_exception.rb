module Ingenico::Connect::SDK
  module Webhooks
    # Raised when a webhooks event has an API version that is not supported by current version
    # of SDK.
    class ApiVersionMismatchException < RuntimeError

      def initialize(event_api_version, sdk_api_version)
        super("event API version #{event_api_version} is not compatible with SDK API version #{sdk_api_version}")
        @event_api_version = event_api_version
        @sdk_api_version = sdk_api_version
      end

      # The API version from the webhooks event.
      attr_reader :event_api_version

      # The API version that this version of the SDK supports.
      attr_reader :sdk_api_version
    end
  end
end
