#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class PaymentProduct863ThirdPartyData < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :app_id

        # String
        attr_accessor :nonce_str

        # String
        attr_accessor :package_sign

        # String
        attr_accessor :pay_sign

        # String
        attr_accessor :prepay_id

        # String
        attr_accessor :sign_type

        # String
        attr_accessor :time_stamp

        def to_h
          hash = super
          add_to_hash(hash, 'appId', @app_id)
          add_to_hash(hash, 'nonceStr', @nonce_str)
          add_to_hash(hash, 'packageSign', @package_sign)
          add_to_hash(hash, 'paySign', @pay_sign)
          add_to_hash(hash, 'prepayId', @prepay_id)
          add_to_hash(hash, 'signType', @sign_type)
          add_to_hash(hash, 'timeStamp', @time_stamp)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('appId')
            @app_id = hash['appId']
          end
          if hash.has_key?('nonceStr')
            @nonce_str = hash['nonceStr']
          end
          if hash.has_key?('packageSign')
            @package_sign = hash['packageSign']
          end
          if hash.has_key?('paySign')
            @pay_sign = hash['paySign']
          end
          if hash.has_key?('prepayId')
            @prepay_id = hash['prepayId']
          end
          if hash.has_key?('signType')
            @sign_type = hash['signType']
          end
          if hash.has_key?('timeStamp')
            @time_stamp = hash['timeStamp']
          end
        end
      end
    end
  end
end
