#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class OrderLineDetails < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :discount_amount

        # Integer
        attr_accessor :google_product_category_id

        # Integer
        attr_accessor :line_amount_total

        # String
        attr_accessor :product_code

        # String
        attr_accessor :product_name

        # Integer
        attr_accessor :product_price

        # String
        attr_accessor :product_type

        # Integer
        attr_accessor :quantity

        # Integer
        attr_accessor :tax_amount

        # String
        attr_accessor :unit

        def to_h
          hash = super
          add_to_hash(hash, 'discountAmount', @discount_amount)
          add_to_hash(hash, 'googleProductCategoryId', @google_product_category_id)
          add_to_hash(hash, 'lineAmountTotal', @line_amount_total)
          add_to_hash(hash, 'productCode', @product_code)
          add_to_hash(hash, 'productName', @product_name)
          add_to_hash(hash, 'productPrice', @product_price)
          add_to_hash(hash, 'productType', @product_type)
          add_to_hash(hash, 'quantity', @quantity)
          add_to_hash(hash, 'taxAmount', @tax_amount)
          add_to_hash(hash, 'unit', @unit)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('discountAmount')
            @discount_amount = hash['discountAmount']
          end
          if hash.has_key?('googleProductCategoryId')
            @google_product_category_id = hash['googleProductCategoryId']
          end
          if hash.has_key?('lineAmountTotal')
            @line_amount_total = hash['lineAmountTotal']
          end
          if hash.has_key?('productCode')
            @product_code = hash['productCode']
          end
          if hash.has_key?('productName')
            @product_name = hash['productName']
          end
          if hash.has_key?('productPrice')
            @product_price = hash['productPrice']
          end
          if hash.has_key?('productType')
            @product_type = hash['productType']
          end
          if hash.has_key?('quantity')
            @quantity = hash['quantity']
          end
          if hash.has_key?('taxAmount')
            @tax_amount = hash['taxAmount']
          end
          if hash.has_key?('unit')
            @unit = hash['unit']
          end
        end
      end
    end
  end
end
