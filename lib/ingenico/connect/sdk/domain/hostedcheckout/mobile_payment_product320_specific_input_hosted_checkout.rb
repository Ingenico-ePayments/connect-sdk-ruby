#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Hostedcheckout

      # @attr [String] merchant_name
      # @attr [String] merchant_origin
      class MobilePaymentProduct320SpecificInputHostedCheckout < Ingenico::Connect::SDK::DataObject

        attr_accessor :merchant_name

        attr_accessor :merchant_origin

        # @return (Hash)
        def to_h
          hash = super
          hash['merchantName'] = @merchant_name unless @merchant_name.nil?
          hash['merchantOrigin'] = @merchant_origin unless @merchant_origin.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'merchantName'
            @merchant_name = hash['merchantName']
          end
          if hash.has_key? 'merchantOrigin'
            @merchant_origin = hash['merchantOrigin']
          end
        end
      end
    end
  end
end
