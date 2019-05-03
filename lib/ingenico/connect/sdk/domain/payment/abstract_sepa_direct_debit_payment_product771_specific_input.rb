#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class AbstractSepaDirectDebitPaymentProduct771SpecificInput < Ingenico::Connect::SDK::DataObject

        # String
        #
        # Deprecated; Use existingUniqueMandateReference or mandate.uniqueMandateReference instead
        attr_accessor :mandate_reference

        def to_h
          hash = super
          add_to_hash(hash, 'mandateReference', @mandate_reference)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('mandateReference')
            @mandate_reference = hash['mandateReference']
          end
        end
      end
    end
  end
end
