module Ingenico::Connect::SDK

  # This error is raised when the request refers to a resource or object that is not found by the Ingenico ePayments platform.
  # The object referred to may not exist or it could have been removed recently.
  class ReferenceException < ApiException

    # Create a new ReferenceException.
    # @see ApiException#initialize
    def initialize(status_code, response_body, error_id, errors,
                   message='the Ingenico ePayments platform returned a reference error response')
      super(status_code, response_body, error_id, errors, message)
    end
  end
end
