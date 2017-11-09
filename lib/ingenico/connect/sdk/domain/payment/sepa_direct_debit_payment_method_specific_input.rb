#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/sepa_direct_debit_payment_method_specific_input_base'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class SepaDirectDebitPaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Payment::SepaDirectDebitPaymentMethodSpecificInputBase

        # String
        attr_accessor :date_collect

        # String
        attr_accessor :direct_debit_text

        # true/false
        attr_accessor :is_recurring

        # String
        attr_accessor :recurring_payment_sequence_indicator

        # String
        attr_accessor :token

        # true/false
        attr_accessor :tokenize

        def to_h
          hash = super
          add_to_hash(hash, 'dateCollect', @date_collect)
          add_to_hash(hash, 'directDebitText', @direct_debit_text)
          add_to_hash(hash, 'isRecurring', @is_recurring)
          add_to_hash(hash, 'recurringPaymentSequenceIndicator', @recurring_payment_sequence_indicator)
          add_to_hash(hash, 'token', @token)
          add_to_hash(hash, 'tokenize', @tokenize)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('dateCollect')
            @date_collect = hash['dateCollect']
          end
          if hash.has_key?('directDebitText')
            @direct_debit_text = hash['directDebitText']
          end
          if hash.has_key?('isRecurring')
            @is_recurring = hash['isRecurring']
          end
          if hash.has_key?('recurringPaymentSequenceIndicator')
            @recurring_payment_sequence_indicator = hash['recurringPaymentSequenceIndicator']
          end
          if hash.has_key?('token')
            @token = hash['token']
          end
          if hash.has_key?('tokenize')
            @tokenize = hash['tokenize']
          end
        end
      end
    end
  end
end
