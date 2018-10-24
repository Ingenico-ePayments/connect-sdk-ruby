#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_payment_method_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class AbstractRedirectPaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Definitions::AbstractPaymentMethodSpecificInput

        # Integer
        attr_accessor :expiration_period

        # String
        attr_accessor :recurring_payment_sequence_indicator

        # true/false
        attr_accessor :requires_approval

        # String
        attr_accessor :token

        # true/false
        attr_accessor :tokenize

        def to_h
          hash = super
          add_to_hash(hash, 'expirationPeriod', @expiration_period)
          add_to_hash(hash, 'recurringPaymentSequenceIndicator', @recurring_payment_sequence_indicator)
          add_to_hash(hash, 'requiresApproval', @requires_approval)
          add_to_hash(hash, 'token', @token)
          add_to_hash(hash, 'tokenize', @tokenize)
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
          if hash.has_key?('requiresApproval')
            @requires_approval = hash['requiresApproval']
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
