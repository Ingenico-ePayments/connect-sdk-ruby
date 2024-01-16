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
        module Products
          # Query parameters for {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/products/networks.html Get payment product networks}
          # @attr [String] country_code
          # @attr [String] currency_code
          # @attr [Integer] amount
          # @attr [true/false] is_recurring
          class NetworksParams < Ingenico::Connect::SDK::ParamRequest

            attr_accessor :country_code

            attr_accessor :currency_code

            attr_accessor :amount

            attr_accessor :is_recurring

            # @return [Array<Ingenico::Connect::SDK::RequestParam>] representing the attributes of this class
            def to_request_parameters
              result = []
              result << RequestParam.new('countryCode', @country_code) unless @country_code.nil?
              result << RequestParam.new('currencyCode', @currency_code) unless @currency_code.nil?
              result << RequestParam.new('amount', @amount.to_s) unless @amount.nil?
              result << RequestParam.new('isRecurring', @is_recurring.to_s) unless @is_recurring.nil?
              result
            end
          end
        end
      end
    end
  end
end
