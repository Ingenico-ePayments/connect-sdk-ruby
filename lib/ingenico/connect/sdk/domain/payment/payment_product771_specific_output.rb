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
          # @attr [String] mandate_reference
          class PaymentProduct771SpecificOutput < Ingenico::Connect::SDK::DataObject

            attr_accessor :mandate_reference

            # @return (Hash)
            def to_h
              hash = super
              hash['mandateReference'] = @mandate_reference unless @mandate_reference.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'mandateReference'
                @mandate_reference = hash['mandateReference']
              end
            end
          end
        end
      end
    end
  end
end
