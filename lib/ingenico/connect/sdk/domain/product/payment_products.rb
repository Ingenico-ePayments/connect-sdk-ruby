#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/payment_product'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Product
          # @attr [Array<Ingenico::Connect::SDK::Domain::Product::PaymentProduct>] payment_products
          class PaymentProducts < Ingenico::Connect::SDK::DataObject

            attr_accessor :payment_products

            # @return (Hash)
            def to_h
              hash = super
              hash['paymentProducts'] = @payment_products.collect{|val| val.to_h} unless @payment_products.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'paymentProducts'
                raise TypeError, "value '%s' is not an Array" % [hash['paymentProducts']] unless hash['paymentProducts'].is_a? Array
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
  end
end
