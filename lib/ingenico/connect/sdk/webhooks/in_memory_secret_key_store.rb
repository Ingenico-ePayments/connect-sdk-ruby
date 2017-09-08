require 'concurrent'
require 'singleton'

module Ingenico::Connect::SDK
  module Webhooks
    # An in-memory secret key store. This implementation can be used
    # in applications where secret keys are specified at application
    # startup. Thread-safe.
    class InMemorySecretKeyStore

      include Singleton
      include SecretKeyStore

      # Creates new InMemorySecretKeyStore
      def initialize
        # NOTE: use Map instead of Hash to provide better performance
        # under high concurrency.
        @store = Concurrent::Map.new
      end

      # Retrieves the secret key corresponding to the given key id
      #
      # key_id:: key id of the secret key
      # Raises {Ingenico::Connect::SDK::Webhooks::SecretKeyNotAvailableException} if the secret key for the given key id is not available.
      def get_secret_key(key_id)
        if (secret_key = @store.get(key_id)).nil?
          msg = "could not find secret key for key id " + key_id
          raise SecretKeyNotAvailableException.new(message: msg, key_id: key_id)
        end
        secret_key
      end

      # Stores the given secret key for the given key id.
      #
      # key_id:: key id of the secret key
      # secret_id:: the secret key to be stored
      def store_secret_key(key_id, secret_key)
        raise ArgumentError if key_id.nil? or key_id.strip.empty?
        raise ArgumentError if secret_key.nil? or secret_key.strip.empty?
        @store.put(key_id, secret_key)
      end

      # Removes the secret key for the given key id.
      #
      # key_id:: the key id whose corresponding secret should be removed from the store
      def remove_secret_key(key_id)
        @store.delete(key_id)
      end

      # Removes all stored secret keys from the store
      def clear
        @store.clear
      end
    end
  end
end
