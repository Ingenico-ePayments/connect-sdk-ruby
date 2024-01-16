require 'ingenico/connect/sdk/declined_transaction_exception'

module Ingenico
  module Connect
    module SDK
      # Indicates that a payout is declined by the Ingenico ePayments platform or one of its downstream partners/acquirers.
      class DeclinedPayoutException < DeclinedTransactionException

        # Create a new DeclinedPayoutException.
        # @see ApiException#initialize
        def initialize(status_code, response_body, errors)
          if errors.nil?
            super(status_code, response_body, nil, nil, build_message(errors))
          else
            super(status_code, response_body, errors.error_id, errors.errors, build_message(errors))
          end
          @errors = errors
        end

        # The declined payout result as returned by the Ingenico ePayments platform.
        # @return [Ingenico::Connect::SDK::Domain::Payout::PayoutResult]
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
            'the Ingenico ePayments platform returned a declined payout response'
          else
            "declined payout '" + payout.id + "' with status '" + payout.status + "'"
          end
        end
      end
    end
  end
end
