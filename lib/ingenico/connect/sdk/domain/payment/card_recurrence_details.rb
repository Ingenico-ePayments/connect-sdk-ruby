#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class CardRecurrenceDetails < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :end_date

        # Integer
        attr_accessor :min_frequency

        # String
        attr_accessor :recurring_payment_sequence_indicator

        def to_h
          hash = super
          add_to_hash(hash, 'endDate', @end_date)
          add_to_hash(hash, 'minFrequency', @min_frequency)
          add_to_hash(hash, 'recurringPaymentSequenceIndicator', @recurring_payment_sequence_indicator)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('endDate')
            @end_date = hash['endDate']
          end
          if hash.has_key?('minFrequency')
            @min_frequency = hash['minFrequency']
          end
          if hash.has_key?('recurringPaymentSequenceIndicator')
            @recurring_payment_sequence_indicator = hash['recurringPaymentSequenceIndicator']
          end
        end
      end
    end
  end
end
