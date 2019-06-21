#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/services/iin_detail'

module Ingenico::Connect::SDK
  module Domain
    module Services

      # @attr [Array<Ingenico::Connect::SDK::Domain::Services::IINDetail>] co_brands
      # @attr [String] country_code
      # @attr [true/false] is_allowed_in_context
      # @attr [Integer] payment_product_id
      class GetIINDetailsResponse < Ingenico::Connect::SDK::DataObject

        attr_accessor :co_brands

        attr_accessor :country_code

        attr_accessor :is_allowed_in_context

        attr_accessor :payment_product_id

        # @return (Hash)
        def to_h
          hash = super
          hash['coBrands'] = @co_brands.collect{|val| val.to_h} unless @co_brands.nil?
          hash['countryCode'] = @country_code unless @country_code.nil?
          hash['isAllowedInContext'] = @is_allowed_in_context unless @is_allowed_in_context.nil?
          hash['paymentProductId'] = @payment_product_id unless @payment_product_id.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'coBrands'
            raise TypeError, "value '%s' is not an Array" % [hash['coBrands']] unless hash['coBrands'].is_a? Array
            @co_brands = []
            hash['coBrands'].each do |e|
              @co_brands << Ingenico::Connect::SDK::Domain::Services::IINDetail.new_from_hash(e)
            end
          end
          if hash.has_key? 'countryCode'
            @country_code = hash['countryCode']
          end
          if hash.has_key? 'isAllowedInContext'
            @is_allowed_in_context = hash['isAllowedInContext']
          end
          if hash.has_key? 'paymentProductId'
            @payment_product_id = hash['paymentProductId']
          end
        end
      end
    end
  end
end
