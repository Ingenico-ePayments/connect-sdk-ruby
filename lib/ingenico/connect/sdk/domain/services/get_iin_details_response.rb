#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/services/iin_detail'

module Ingenico::Connect::SDK
  module Domain
    module Services

      class GetIINDetailsResponse < Ingenico::Connect::SDK::DataObject

        # Array of {Ingenico::Connect::SDK::Domain::Services::IINDetail}
        attr_accessor :co_brands

        # String
        attr_accessor :country_code

        # true/false
        attr_accessor :is_allowed_in_context

        # Integer
        attr_accessor :payment_product_id

        def to_h
          hash = super
          add_to_hash(hash, 'coBrands', @co_brands)
          add_to_hash(hash, 'countryCode', @country_code)
          add_to_hash(hash, 'isAllowedInContext', @is_allowed_in_context)
          add_to_hash(hash, 'paymentProductId', @payment_product_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('coBrands')
            if !(hash['coBrands'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['coBrands']]
            end
            @co_brands = []
            hash['coBrands'].each do |e|
              @co_brands << Ingenico::Connect::SDK::Domain::Services::IINDetail.new_from_hash(e)
            end
          end
          if hash.has_key?('countryCode')
            @country_code = hash['countryCode']
          end
          if hash.has_key?('isAllowedInContext')
            @is_allowed_in_context = hash['isAllowedInContext']
          end
          if hash.has_key?('paymentProductId')
            @payment_product_id = hash['paymentProductId']
          end
        end
      end
    end
  end
end
