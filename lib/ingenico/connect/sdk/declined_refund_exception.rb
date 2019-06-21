require 'ingenico/connect/sdk/declined_transaction_exception'

module Ingenico::Connect::SDK

  # Indicates that a refund is declined by the Ingenico ePayments platform or one of its downstream partners/acquirers.
  class DeclinedRefundException < DeclinedTransactionException

    # Create a new DeclinedRefundException
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

    # The declined refund result as returned by the Ingenico ePayments platform.
    # @return [Ingenico::Connect::SDK::Domain::Refund::RefundResult]
    def refund_result
      if @errors.nil?
        nil
      else
        @errors.refund_result
      end
    end

    private

    def build_message(errors)
      if !errors.nil?
        refund = errors.refund_result
      else
        refund = nil
      end
      if refund.nil?
        'the Ingenico ePayments platform returned a declined refund response'
      else
        "declined refund '" + refund.id + "' with status '" +
            refund.status + "'"
      end
    end
  end
end
