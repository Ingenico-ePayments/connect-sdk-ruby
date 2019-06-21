#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_payment_method_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [true/false] requires_approval
      class AbstractEInvoicePaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Definitions::AbstractPaymentMethodSpecificInput

        attr_accessor :requires_approval

        # @return (Hash)
        def to_h
          hash = super
          hash['requiresApproval'] = @requires_approval unless @requires_approval.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'requiresApproval'
            @requires_approval = hash['requiresApproval']
          end
        end
      end
    end
  end
end
