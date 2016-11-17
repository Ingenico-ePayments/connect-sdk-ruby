module Ingenico::Connect::SDK

  # This exception is thrown when a response from the GlobalCollect platform indicates that an error occurred
  # on the GlobalCollect platform while processing the request.
  # This corresponds to a HTTP status code of 500 or 502.
  class GlobalCollectException < ApiException

    # Create a new GlobalCollectException
    # @see ApiException#initialize
    def initialize(status_code, response_body, error_id, errors,
                   message='the GlobalCollect platform returned an error response')
      super(status_code, response_body, error_id, errors, message)
    end
  end
end
