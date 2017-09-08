module Ingenico::Connect::SDK
  module Webhooks

    # Builder for a WebhooksHelper object.
    class WebhooksHelperBuilder

      # Sets the Marshaller to use.
      def with_marshaller(marshaller)
        @marshaller = marshaller
        self
      end

      # Sets the SecretkeyStore to use.
      def with_secret_key_store(secret_key_store)
        @secret_key_store = secret_key_store
        self
      end

      # Creates a fully initialized WebhooksHelper object
      def build
        WebhooksHelper.new(@marshaller, @secret_key_store)
      end
    end
  end
end
