module Ingenico::Connect::SDK

  # Raised when the request sent to the Ingenico ePayments platform returned a HTTP response with status code 400.
  # This indicates the request received by the Ingenico ePayments platform was malformed.
  class ValidationException < ApiException

    # Create a new ValidationException
    # @see ApiException#initialize
    def initialize(status_code, response_body, error_id, errors,
                   message='the Ingenico ePayments platform returned an incorrect request error response')
      super(status_code, response_body, error_id, errors, message)
    end
  end
end
