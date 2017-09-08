module Ingenico::Connect::SDK
  module Webhooks
    # An abstract store of secret keys. Implementation can store secret keys in a database,
    # on disk, etc. Should be Thread-safe.
    module SecretKeyStore

      # Retrieve secret key for given key id
      #
      # key_id:: given key id
      # Raises {Ingenico::Connect::SDK::Webhooks::SecretKeyNotAvailableException} if the secret key for the given key id is not available.
      def get_secret_key(key_id)
        raise NotImplementedError
      end
    end
  end
end
