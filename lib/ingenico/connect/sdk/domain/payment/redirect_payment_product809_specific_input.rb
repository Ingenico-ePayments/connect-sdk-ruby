#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_RedirectPaymentProduct809SpecificInput RedirectPaymentProduct809SpecificInput}
      class RedirectPaymentProduct809SpecificInput < Ingenico::Connect::SDK::DataObject

        # String
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
