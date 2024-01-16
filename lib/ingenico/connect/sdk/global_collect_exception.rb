require 'ingenico/connect/sdk/api_exception'

module Ingenico
  module Connect
    module SDK
      # This exception is thrown when a response from the Ingenico ePayments platform indicates that an error occurred
      # on the Ingenico ePayments platform while processing the request.
      # This corresponds to a HTTP status code of 500 or 502.
      class GlobalCollectException < ApiException

        # Create a new GlobalCollectException
        # @see ApiException#initialize
        def initialize(status_code, response_body, error_id, errors,
                       message = 'the Ingenico ePayments platform returned an error response')
          super(status_code, response_body, error_id, errors, message)
        end
      end
    end
  end
end
