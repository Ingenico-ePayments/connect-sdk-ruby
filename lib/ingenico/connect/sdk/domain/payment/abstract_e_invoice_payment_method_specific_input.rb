#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_payment_method_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class AbstractEInvoicePaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Definitions::AbstractPaymentMethodSpecificInput

        # true/false
        attr_accessor :requires_approval

        def to_h
          hash = super
          add_to_hash(hash, 'requiresApproval', @requires_approval)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('requiresApproval')
            @requires_approval = hash['requiresApproval']
          end
        end
      end
    end
  end
end
