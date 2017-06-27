#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class PaymentCreationReferences < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :additional_reference

        # String
        attr_accessor :external_reference

        def to_h
          hash = super
          add_to_hash(hash, 'additionalReference', @additional_reference)
          add_to_hash(hash, 'externalReference', @external_reference)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('additionalReference')
            @additional_reference = hash['additionalReference']
          end
          if hash.has_key?('externalReference')
            @external_reference = hash['externalReference']
          end
        end
      end
    end
  end
end
