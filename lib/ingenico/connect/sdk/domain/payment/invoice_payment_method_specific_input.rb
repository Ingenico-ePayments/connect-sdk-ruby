#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_payment_method_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_InvoicePaymentMethodSpecificInput InvoicePaymentMethodSpecificInput}
      class InvoicePaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Definitions::AbstractPaymentMethodSpecificInput

        # String
        attr_accessor :additional_reference

        def to_h
          hash = super
          add_to_hash(hash, 'additionalReference', @additional_reference)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('additionalReference')
            @additional_reference = hash['additionalReference']
          end
        end
      end
    end
  end
end
