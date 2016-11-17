#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/payment_product_field_validators'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PaymentProductFieldDataRestrictions PaymentProductFieldDataRestrictions}
      class PaymentProductFieldDataRestrictions < Ingenico::Connect::SDK::DataObject

        # true/false
        attr_accessor :is_required

        # {Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldValidators}
        attr_accessor :validators

        def to_h
          hash = super
          add_to_hash(hash, 'isRequired', @is_required)
          add_to_hash(hash, 'validators', @validators)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('isRequired')
            @is_required = hash['isRequired']
          end
          if hash.has_key?('validators')
            if !(hash['validators'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['validators']]
            end
            @validators = Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldValidators.new_from_hash(hash['validators'])
          end
        end
      end
    end
  end
end
