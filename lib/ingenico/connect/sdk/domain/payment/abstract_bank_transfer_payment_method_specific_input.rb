#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_payment_method_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] additional_reference
      class AbstractBankTransferPaymentMethodSpecificInput < Ingenico::Connect::SDK::Domain::Definitions::AbstractPaymentMethodSpecificInput

        attr_accessor :additional_reference

        # @return (Hash)
        def to_h
          hash = super
          hash['additionalReference'] = @additional_reference unless @additional_reference.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'additionalReference'
            @additional_reference = hash['additionalReference']
          end
        end
      end
    end
  end
end
