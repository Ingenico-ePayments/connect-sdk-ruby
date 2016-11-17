#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/account_on_file_attribute'
require 'ingenico/connect/sdk/domain/product/account_on_file_display_hints'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_AccountOnFile AccountOnFile}
      class AccountOnFile < Ingenico::Connect::SDK::DataObject

        # Array of {Ingenico::Connect::SDK::Domain::Product::AccountOnFileAttribute}
        attr_accessor :attributes

        # {Ingenico::Connect::SDK::Domain::Product::AccountOnFileDisplayHints}
        attr_accessor :display_hints

        # Integer
        attr_accessor :id

        # Integer
        attr_accessor :payment_product_id

        def to_h
          hash = super
          add_to_hash(hash, 'attributes', @attributes)
          add_to_hash(hash, 'displayHints', @display_hints)
          add_to_hash(hash, 'id', @id)
          add_to_hash(hash, 'paymentProductId', @payment_product_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('attributes')
            if !(hash['attributes'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['attributes']]
            end
            @attributes = []
            hash['attributes'].each do |e|
              @attributes << Ingenico::Connect::SDK::Domain::Product::AccountOnFileAttribute.new_from_hash(e)
            end
          end
          if hash.has_key?('displayHints')
            if !(hash['displayHints'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['displayHints']]
            end
            @display_hints = Ingenico::Connect::SDK::Domain::Product::AccountOnFileDisplayHints.new_from_hash(hash['displayHints'])
          end
          if hash.has_key?('id')
            @id = hash['id']
          end
          if hash.has_key?('paymentProductId')
            @payment_product_id = hash['paymentProductId']
          end
        end
      end
    end
  end
end
