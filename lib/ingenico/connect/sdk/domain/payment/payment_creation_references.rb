#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] additional_reference
          # @attr [String] external_reference
          class PaymentCreationReferences < Ingenico::Connect::SDK::DataObject

            attr_accessor :additional_reference

            attr_accessor :external_reference

            # @return (Hash)
            def to_h
              hash = super
              hash['additionalReference'] = @additional_reference unless @additional_reference.nil?
              hash['externalReference'] = @external_reference unless @external_reference.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'additionalReference'
                @additional_reference = hash['additionalReference']
              end
              if hash.has_key? 'externalReference'
                @external_reference = hash['externalReference']
              end
            end
          end
        end
      end
    end
  end
end
