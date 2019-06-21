#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/payment_product_group'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # @attr [Array<Ingenico::Connect::SDK::Domain::Product::PaymentProductGroup>] payment_product_groups
      class PaymentProductGroups < Ingenico::Connect::SDK::DataObject

        attr_accessor :payment_product_groups

        # @return (Hash)
        def to_h
          hash = super
          hash['paymentProductGroups'] = @payment_product_groups.collect{|val| val.to_h} unless @payment_product_groups.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'paymentProductGroups'
            raise TypeError, "value '%s' is not an Array" % [hash['paymentProductGroups']] unless hash['paymentProductGroups'].is_a? Array
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
