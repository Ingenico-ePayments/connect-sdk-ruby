#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Services

      class IINDetail < Ingenico::Connect::SDK::DataObject

        # true/false
        attr_accessor :is_allowed_in_context

        # Integer
        attr_accessor :payment_product_id

        def to_h
          hash = super
          add_to_hash(hash, 'isAllowedInContext', @is_allowed_in_context)
          add_to_hash(hash, 'paymentProductId', @payment_product_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('isAllowedInContext')
            @is_allowed_in_context = hash['isAllowedInContext']
          end
          if hash.has_key?('paymentProductId')
            @payment_product_id = hash['paymentProductId']
          end
        end
      end
    end
  end
end
