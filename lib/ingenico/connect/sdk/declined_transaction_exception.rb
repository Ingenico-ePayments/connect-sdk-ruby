module Ingenico::Connect::SDK

  # Indicates that a transaction is declined by the Ingenico ePayments platform or one of its downstream partners/acquirers.
  class DeclinedTransactionException < ApiException

    # Create a new DeclinedTransactionException.
    # @see ApiException#initialize
    def initialize(status_code, response_body, error_id, errors, message=false)
      if message == false
        super(status_code, response_body, error_id, errors)
      else
        super(status_code, response_body, error_id, errors, message)
      end
    end
  end
end
