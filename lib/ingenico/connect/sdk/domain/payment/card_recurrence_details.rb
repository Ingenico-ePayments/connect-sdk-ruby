#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] end_date
      # @attr [Integer] min_frequency
      # @attr [String] recurring_payment_sequence_indicator
      class CardRecurrenceDetails < Ingenico::Connect::SDK::DataObject

        attr_accessor :end_date

        attr_accessor :min_frequency

        attr_accessor :recurring_payment_sequence_indicator

        # @return (Hash)
        def to_h
          hash = super
          hash['endDate'] = @end_date unless @end_date.nil?
          hash['minFrequency'] = @min_frequency unless @min_frequency.nil?
          hash['recurringPaymentSequenceIndicator'] = @recurring_payment_sequence_indicator unless @recurring_payment_sequence_indicator.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'endDate'
            @end_date = hash['endDate']
          end
          if hash.has_key? 'minFrequency'
            @min_frequency = hash['minFrequency']
          end
          if hash.has_key? 'recurringPaymentSequenceIndicator'
            @recurring_payment_sequence_indicator = hash['recurringPaymentSequenceIndicator']
          end
        end
      end
    end
  end
end
