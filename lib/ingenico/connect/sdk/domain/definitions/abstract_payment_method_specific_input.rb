#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class AbstractPaymentMethodSpecificInput < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :payment_product_id

        def to_h
          hash = super
          add_to_hash(hash, 'paymentProductId', @payment_product_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('paymentProductId')
            @payment_product_id = hash['paymentProductId']
          end
        end
      end
    end
  end
end
