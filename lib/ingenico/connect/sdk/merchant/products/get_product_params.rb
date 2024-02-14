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
          # Query parameters for {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/products/get.html Get payment product}
          # @attr [String] country_code
          # @attr [String] currency_code
          # @attr [String] locale
          # @attr [Integer] amount
          # @attr [true/false] is_recurring
          # @attr [true/false] is_installments
          # @attr [Array<String>] hide
          # @attr [true/false] force_basic_flow
          class GetProductParams < Ingenico::Connect::SDK::ParamRequest

            attr_accessor :country_code

            attr_accessor :currency_code

            attr_accessor :locale

            attr_accessor :amount

            attr_accessor :is_recurring

            attr_accessor :is_installments

            attr_accessor :hide

            attr_accessor :force_basic_flow

            # Adds the parameter _value_ to the _hide_ Array
            # @param value [String]
            def add_hide(value)
              unless @hide
                @hide = []
              end
              @hide << value
            end

            # @return [Array<Ingenico::Connect::SDK::RequestParam>] representing the attributes of this class
            def to_request_parameters
              result = []
              result << RequestParam.new('countryCode', @country_code) unless @country_code.nil?
              result << RequestParam.new('currencyCode', @currency_code) unless @currency_code.nil?
              result << RequestParam.new('locale', @locale) unless @locale.nil?
              result << RequestParam.new('amount', @amount.to_s) unless @amount.nil?
              result << RequestParam.new('isRecurring', @is_recurring.to_s) unless @is_recurring.nil?
              result << RequestParam.new('isInstallments', @is_installments.to_s) unless @is_installments.nil?
              unless @hide.nil?
                @hide.each {|e| result << RequestParam.new('hide', e)}
              end
              result << RequestParam.new('forceBasicFlow', @force_basic_flow.to_s) unless @force_basic_flow.nil?
              result
            end
          end
        end
      end
    end
  end
end
