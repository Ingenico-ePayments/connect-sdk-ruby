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
          # @attr [true/false] address_selection_at_pay_pal
          class AbstractRedirectPaymentProduct840SpecificInput < Ingenico::Connect::SDK::DataObject

            attr_accessor :address_selection_at_pay_pal

            # @return (Hash)
            def to_h
              hash = super
              hash['addressSelectionAtPayPal'] = @address_selection_at_pay_pal unless @address_selection_at_pay_pal.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'addressSelectionAtPayPal'
                @address_selection_at_pay_pal = hash['addressSelectionAtPayPal']
              end
            end
          end
        end
      end
    end
  end
end
