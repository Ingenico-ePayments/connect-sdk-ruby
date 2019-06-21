#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/payment_product_field_validators'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # @attr [true/false] is_required
      # @attr [Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldValidators] validators
      class PaymentProductFieldDataRestrictions < Ingenico::Connect::SDK::DataObject

        attr_accessor :is_required

        attr_accessor :validators

        # @return (Hash)
        def to_h
          hash = super
          hash['isRequired'] = @is_required unless @is_required.nil?
          hash['validators'] = @validators.to_h unless @validators.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'isRequired'
            @is_required = hash['isRequired']
          end
          if hash.has_key? 'validators'
            raise TypeError, "value '%s' is not a Hash" % [hash['validators']] unless hash['validators'].is_a? Hash
            @validators = Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldValidators.new_from_hash(hash['validators'])
          end
        end
      end
    end
  end
end
