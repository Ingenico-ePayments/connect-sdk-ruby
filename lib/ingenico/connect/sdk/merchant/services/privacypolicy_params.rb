#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/param_request'
require 'ingenico/connect/sdk/request_param'

module Ingenico
  module Connect
    module SDK
      module Merchant
        module Services
          # Query parameters for {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/services/privacypolicy.html Get privacy policy}
          # @attr [String] locale
          # @attr [Integer] payment_product_id
          class PrivacypolicyParams < Ingenico::Connect::SDK::ParamRequest

            attr_accessor :locale

            attr_accessor :payment_product_id

            # @return [Array<Ingenico::Connect::SDK::RequestParam>] representing the attributes of this class
            def to_request_parameters
              result = []
              result << RequestParam.new('locale', @locale) unless @locale.nil?
              result << RequestParam.new('paymentProductId', @payment_product_id.to_s) unless @payment_product_id.nil?
              result
            end
          end
        end
      end
    end
  end
end
