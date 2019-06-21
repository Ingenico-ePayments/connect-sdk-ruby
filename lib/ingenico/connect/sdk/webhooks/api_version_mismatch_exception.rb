module Ingenico::Connect::SDK
  module Webhooks
    # Raised when a webhooks event has an API version that is not supported by current version
    # of SDK.
    #
    # @attr_reader [String] event_api_version The API version from the webhooks event.
    # @attr_reader [String] sdk_api_version   The API version that this version of the SDK supports.
    class ApiVersionMismatchException < RuntimeError

      def initialize(event_api_version, sdk_api_version)
        super("event API version #{event_api_version} is not compatible with SDK API version #{sdk_api_version}")
        @event_api_version = event_api_version
        @sdk_api_version = sdk_api_version
      end

      attr_reader :event_api_version
      attr_reader :sdk_api_version
    end
  end
end
