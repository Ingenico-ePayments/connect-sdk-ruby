#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Hostedcheckout

      class MobilePaymentProduct320SpecificInputHostedCheckout < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :merchant_name

        # String
        attr_accessor :merchant_origin

        def to_h
          hash = super
          add_to_hash(hash, 'merchantName', @merchant_name)
          add_to_hash(hash, 'merchantOrigin', @merchant_origin)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('merchantName')
            @merchant_name = hash['merchantName']
          end
          if hash.has_key?('merchantOrigin')
            @merchant_origin = hash['merchantOrigin']
          end
        end
      end
    end
  end
end
