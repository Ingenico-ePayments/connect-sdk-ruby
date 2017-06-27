#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class RedirectPaymentProduct809SpecificInput < Ingenico::Connect::SDK::DataObject

        # String
        #
        # Deprecated; Use RedirectPaymentMethodSpecificInput.expirationPeriod instead
        attr_accessor :expiration_period

        # String
        attr_accessor :issuer_id

        def to_h
          hash = super
          add_to_hash(hash, 'expirationPeriod', @expiration_period)
          add_to_hash(hash, 'issuerId', @issuer_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('expirationPeriod')
            @expiration_period = hash['expirationPeriod']
          end
          if hash.has_key?('issuerId')
            @issuer_id = hash['issuerId']
          end
        end
      end
    end
  end
end
