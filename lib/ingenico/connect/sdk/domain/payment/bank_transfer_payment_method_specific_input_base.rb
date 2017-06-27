#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_payment_method_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class BankTransferPaymentMethodSpecificInputBase < Ingenico::Connect::SDK::Domain::Definitions::AbstractPaymentMethodSpecificInput

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
