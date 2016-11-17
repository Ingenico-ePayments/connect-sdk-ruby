#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/payment_product'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PaymentProducts PaymentProducts}
      class PaymentProducts < Ingenico::Connect::SDK::DataObject

        # Array of {Ingenico::Connect::SDK::Domain::Product::PaymentProduct}
        attr_accessor :payment_products

        def to_h
          hash = super
          add_to_hash(hash, 'paymentProducts', @payment_products)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('paymentProducts')
            if !(hash['paymentProducts'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['paymentProducts']]
            end
            @payment_products = []
            hash['paymentProducts'].each do |e|
              @payment_products << Ingenico::Connect::SDK::Domain::Product::PaymentProduct.new_from_hash(e)
            end
          end
        end
      end
    end
  end
end
