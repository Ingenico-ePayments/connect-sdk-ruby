#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/param_request'
require 'ingenico/connect/sdk/request_param'

module Ingenico::Connect::SDK
  module Merchant
    module Payouts

      # Query parameters for {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/payouts/find.html Find payouts}
      # @attr [String] merchant_reference
      # @attr [Integer] merchant_order_id
      # @attr [Integer] offset
      # @attr [Integer] limit
      class FindPayoutsParams < Ingenico::Connect::SDK::ParamRequest

        attr_accessor :merchant_reference

        attr_accessor :merchant_order_id

        attr_accessor :offset

        attr_accessor :limit

        # @return [Array<Ingenico::Connect::SDK::RequestParam>] representing the attributes of this class
        def to_request_parameters
          result = []
          result << RequestParam.new('merchantReference', @merchant_reference) unless @merchant_reference.nil?
          result << RequestParam.new('merchantOrderId', @merchant_order_id.to_s) unless @merchant_order_id.nil?
          result << RequestParam.new('offset', @offset.to_s) unless @offset.nil?
          result << RequestParam.new('limit', @limit.to_s) unless @limit.nil?
          result
        end
      end
    end
  end
end
