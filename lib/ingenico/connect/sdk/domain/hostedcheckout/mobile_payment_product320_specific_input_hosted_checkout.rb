#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/g_pay_three_d_secure'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Hostedcheckout
          # @attr [String] merchant_name
          # @attr [String] merchant_origin
          # @attr [Ingenico::Connect::SDK::Domain::Payment::GPayThreeDSecure] three_d_secure
          class MobilePaymentProduct320SpecificInputHostedCheckout < Ingenico::Connect::SDK::DataObject

            attr_accessor :merchant_name

            attr_accessor :merchant_origin

            attr_accessor :three_d_secure

            # @return (Hash)
            def to_h
              hash = super
              hash['merchantName'] = @merchant_name unless @merchant_name.nil?
              hash['merchantOrigin'] = @merchant_origin unless @merchant_origin.nil?
              hash['threeDSecure'] = @three_d_secure.to_h unless @three_d_secure.nil?
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
              if hash.has_key? 'threeDSecure'
                raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecure']] unless hash['threeDSecure'].is_a? Hash
                @three_d_secure = Ingenico::Connect::SDK::Domain::Payment::GPayThreeDSecure.new_from_hash(hash['threeDSecure'])
              end
            end
          end
        end
      end
    end
  end
end
