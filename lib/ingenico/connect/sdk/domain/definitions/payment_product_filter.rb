#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class PaymentProductFilter < Ingenico::Connect::SDK::DataObject

        # Array of String
        attr_accessor :groups

        # Array of Integer
        attr_accessor :products

        def to_h
          hash = super
          add_to_hash(hash, 'groups', @groups)
          add_to_hash(hash, 'products', @products)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('groups')
            if !(hash['groups'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['groups']]
            end
            @groups = []
            hash['groups'].each do |e|
              @groups << e
            end
          end
          if hash.has_key?('products')
            if !(hash['products'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['products']]
            end
            @products = []
            hash['products'].each do |e|
              @products << e
            end
          end
        end
      end
    end
  end
end
