#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_payment_method_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_RedirectPaymentMethodSpecificInputBase RedirectPaymentMethodSpecificInputBase}
      class RedirectPaymentMethodSpecificInputBase < Ingenico::Connect::SDK::Domain::Definitions::AbstractPaymentMethodSpecificInput

        # Integer
        attr_accessor :expiration_period

        # String
        attr_accessor :recurring_payment_sequence_indicator

        # String
        attr_accessor :token

        def to_h
          hash = super
          add_to_hash(hash, 'expirationPeriod', @expiration_period)
          add_to_hash(hash, 'recurringPaymentSequenceIndicator', @recurring_payment_sequence_indicator)
          add_to_hash(hash, 'token', @token)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('expirationPeriod')
            @expiration_period = hash['expirationPeriod']
          end
          if hash.has_key?('recurringPaymentSequenceIndicator')
            @recurring_payment_sequence_indicator = hash['recurringPaymentSequenceIndicator']
          end
          if hash.has_key?('token')
            @token = hash['token']
          end
        end
      end
    end
  end
end
