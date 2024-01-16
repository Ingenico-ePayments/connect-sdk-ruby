#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] app_id
          # @attr [String] nonce_str
          # @attr [String] package_sign
          # @attr [String] pay_sign
          # @attr [String] prepay_id
          # @attr [String] sign_type
          # @attr [String] time_stamp
          class PaymentProduct863ThirdPartyData < Ingenico::Connect::SDK::DataObject

            attr_accessor :app_id

            attr_accessor :nonce_str

            attr_accessor :package_sign

            attr_accessor :pay_sign

            attr_accessor :prepay_id

            attr_accessor :sign_type

            attr_accessor :time_stamp

            # @return (Hash)
            def to_h
              hash = super
              hash['appId'] = @app_id unless @app_id.nil?
              hash['nonceStr'] = @nonce_str unless @nonce_str.nil?
              hash['packageSign'] = @package_sign unless @package_sign.nil?
              hash['paySign'] = @pay_sign unless @pay_sign.nil?
              hash['prepayId'] = @prepay_id unless @prepay_id.nil?
              hash['signType'] = @sign_type unless @sign_type.nil?
              hash['timeStamp'] = @time_stamp unless @time_stamp.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'appId'
                @app_id = hash['appId']
              end
              if hash.has_key? 'nonceStr'
                @nonce_str = hash['nonceStr']
              end
              if hash.has_key? 'packageSign'
                @package_sign = hash['packageSign']
              end
              if hash.has_key? 'paySign'
                @pay_sign = hash['paySign']
              end
              if hash.has_key? 'prepayId'
                @prepay_id = hash['prepayId']
              end
              if hash.has_key? 'signType'
                @sign_type = hash['signType']
              end
              if hash.has_key? 'timeStamp'
                @time_stamp = hash['timeStamp']
              end
            end
          end
        end
      end
    end
  end
end
