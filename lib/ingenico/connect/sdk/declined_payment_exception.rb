module Ingenico::Connect::SDK

  # Indicates that a payment is declined by the Ingenico ePayments platform or one of its downstream partners/acquirers.
  class DeclinedPaymentException < DeclinedTransactionException

    # Create a new DeclinedPaymentException.
    # @see ApiException#initialize
    def initialize(status_code, response_body, errors)
      if errors.nil?
        super(status_code, response_body, nil, nil, build_message(errors))
      else
        super(status_code, response_body, errors.error_id, errors.errors,
              build_message(errors))
      end
      @errors = errors
    end

    # The declined payment result returned by the Ingenico ePayments platform.
    # Given as a {Ingenico::Connect::SDK::Domain::Payment::CreatePaymentResult} object.
    def payment_result
      if @errors.nil?
        nil
      else
        @errors.payment_result
      end
    end

    private

    def build_message(errors)
      if !errors.nil? && !errors.payment_result.nil?
        payment = errors.payment_result.payment
      else
        payment = nil
      end
      if payment.nil?
        'the Ingenico ePayments platform returned a declined payment response'
      else
        "declined payment '" + payment.id + "' with status '" +
            payment.status + "'"
      end
    end
  end
end
