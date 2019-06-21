#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/param_request'
require 'ingenico/connect/sdk/request_param'

module Ingenico::Connect::SDK
  module Merchant
    module Services

      # Query parameters for {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/services/convertAmount.html Convert amount}
      # @attr [String] source
      # @attr [String] target
      # @attr [Integer] amount
      class ConvertAmountParams < Ingenico::Connect::SDK::ParamRequest

        attr_accessor :source

        attr_accessor :target

        attr_accessor :amount

        # @return [Array<Ingenico::Connect::SDK::RequestParam>] representing the attributes of this class
        def to_request_parameters
          result = []
          result << RequestParam.new('source', @source) unless @source.nil?
          result << RequestParam.new('target', @target) unless @target.nil?
          result << RequestParam.new('amount', @amount.to_s) unless @amount.nil?
          result
        end
      end
    end
  end
end
