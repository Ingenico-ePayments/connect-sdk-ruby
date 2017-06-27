#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/payment_product_group'

module Ingenico::Connect::SDK
  module Domain
    module Product

      class PaymentProductGroups < Ingenico::Connect::SDK::DataObject

        # Array of {Ingenico::Connect::SDK::Domain::Product::PaymentProductGroup}
        attr_accessor :payment_product_groups

        def to_h
          hash = super
          add_to_hash(hash, 'paymentProductGroups', @payment_product_groups)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('paymentProductGroups')
            if !(hash['paymentProductGroups'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['paymentProductGroups']]
            end
            @payment_product_groups = []
            hash['paymentProductGroups'].each do |e|
              @payment_product_groups << Ingenico::Connect::SDK::Domain::Product::PaymentProductGroup.new_from_hash(e)
            end
          end
        end
      end
    end
  end
end
