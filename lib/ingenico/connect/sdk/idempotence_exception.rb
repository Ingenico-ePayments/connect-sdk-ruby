module Ingenico::Connect::SDK

  # This exception is thrown when a response from the Ingenico ePayments platform indicates
  # a request with the same _idempotence_key_ was received earlier.
  # The _idempotence_request_timestamp_ indicates the time when the first request with this _idempotence_key_ arrived.
  class IdempotenceException < ApiException

    # Create a new IdempotenceException
    # @see ApiException#initialize
    def initialize(status_code, response_body, error_id, errors, idempotence_key,
                   idempotence_request_timestamp,
                   message='the Ingenico ePayments platform returned a duplicate request error response')
      super(status_code, response_body, error_id, errors, message)
      @idempotence_key = idempotence_key
      @idempotence_request_timestamp = idempotence_request_timestamp
    end

    # The idempotence key used in the request.
    attr_reader :idempotence_key

    # A timestamp indicating the arrival time of the request that conflicts with the request just sent.
    attr_reader :idempotence_request_timestamp
  end
end
