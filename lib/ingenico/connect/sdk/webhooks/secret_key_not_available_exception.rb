module Ingenico::Connect::SDK
  module Webhooks
    # Raised when an error caused a secret to become not available.
    class SecretKeyNotAvailableException < SignatureValidationException

      def initialize(args)
        raise ArgumentError if (key_id = args.delete(:key_id)).nil? # key_id is mandatory
        super(args)
        @key_id = key_id
      end

      attr_reader :key_id
    end
  end
end
