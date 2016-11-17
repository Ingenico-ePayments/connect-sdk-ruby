module Ingenico::Connect::SDK

  # Indicates that a payout is declined by the GlobalCollect platform or one of its downstream partners/acquirers.
  class DeclinedPayoutException < DeclinedTransactionException

    # Create a new DeclinedPayoutException.
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

    # The declined payout result as returned by the GlobalCollect platform.
    # Given as a {Ingenico::Connect::SDK::Domain::Payout::PayoutResult} object.
    def payout_result
      if @errors.nil?
        nil
      else
        @errors.payout_result
      end
    end

    private

    def build_message(errors)
      if !errors.nil?
        payout = errors.payout_result
      else
        payout = nil
      end
      if payout.nil?
        'the GlobalCollect platform returned a declined payout response'
      else
        "declined payment '" + payout.id + "' with status '" +
            payout.status + "'"
      end
    end
  end
end
