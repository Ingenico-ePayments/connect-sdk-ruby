#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class LineItemInvoiceData < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :description

        # String
        attr_accessor :merchant_linenumber

        # String
        attr_accessor :merchant_pagenumber

        # String
        attr_accessor :nr_of_items

        # Integer
        attr_accessor :price_per_item

        def to_h
          hash = super
          add_to_hash(hash, 'description', @description)
          add_to_hash(hash, 'merchantLinenumber', @merchant_linenumber)
          add_to_hash(hash, 'merchantPagenumber', @merchant_pagenumber)
          add_to_hash(hash, 'nrOfItems', @nr_of_items)
          add_to_hash(hash, 'pricePerItem', @price_per_item)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('description')
            @description = hash['description']
          end
          if hash.has_key?('merchantLinenumber')
            @merchant_linenumber = hash['merchantLinenumber']
          end
          if hash.has_key?('merchantPagenumber')
            @merchant_pagenumber = hash['merchantPagenumber']
          end
          if hash.has_key?('nrOfItems')
            @nr_of_items = hash['nrOfItems']
          end
          if hash.has_key?('pricePerItem')
            @price_per_item = hash['pricePerItem']
          end
        end
      end
    end
  end
end
