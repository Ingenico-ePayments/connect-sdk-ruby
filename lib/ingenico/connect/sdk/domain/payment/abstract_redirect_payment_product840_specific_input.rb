#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class AbstractRedirectPaymentProduct840SpecificInput < Ingenico::Connect::SDK::DataObject

        # true/false
        attr_accessor :address_selection_at_pay_pal

        def to_h
          hash = super
          add_to_hash(hash, 'addressSelectionAtPayPal', @address_selection_at_pay_pal)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('addressSelectionAtPayPal')
            @address_selection_at_pay_pal = hash['addressSelectionAtPayPal']
          end
        end
      end
    end
  end
end
