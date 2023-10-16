#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/hostedcheckout/payment_product_filters_hosted_checkout'
require 'ingenico/connect/sdk/domain/hostedcheckout/recurring_payments_data'

module Ingenico::Connect::SDK
  module Domain
    module Hostedcheckout

      # @attr [true/false] is_recurring
      # @attr [String] locale
      # @attr [Ingenico::Connect::SDK::Domain::Hostedcheckout::PaymentProductFiltersHostedCheckout] payment_product_filters
      # @attr [Ingenico::Connect::SDK::Domain::Hostedcheckout::RecurringPaymentsData] recurring_payments_data
      # @attr [true/false] return_cancel_state
      # @attr [String] return_url
      # @attr [true/false] show_result_page
      # @attr [String] tokens
      # @attr [true/false] validate_shopping_cart
      # @attr [String] variant
      class HostedCheckoutSpecificInput < Ingenico::Connect::SDK::DataObject

        attr_accessor :is_recurring

        attr_accessor :locale

        attr_accessor :payment_product_filters

        attr_accessor :recurring_payments_data

        attr_accessor :return_cancel_state

        attr_accessor :return_url

        attr_accessor :show_result_page

        attr_accessor :tokens

        attr_accessor :validate_shopping_cart

        attr_accessor :variant

        # @return (Hash)
        def to_h
          hash = super
          hash['isRecurring'] = @is_recurring unless @is_recurring.nil?
          hash['locale'] = @locale unless @locale.nil?
          hash['paymentProductFilters'] = @payment_product_filters.to_h unless @payment_product_filters.nil?
          hash['recurringPaymentsData'] = @recurring_payments_data.to_h unless @recurring_payments_data.nil?
          hash['returnCancelState'] = @return_cancel_state unless @return_cancel_state.nil?
          hash['returnUrl'] = @return_url unless @return_url.nil?
          hash['showResultPage'] = @show_result_page unless @show_result_page.nil?
          hash['tokens'] = @tokens unless @tokens.nil?
          hash['validateShoppingCart'] = @validate_shopping_cart unless @validate_shopping_cart.nil?
          hash['variant'] = @variant unless @variant.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'isRecurring'
            @is_recurring = hash['isRecurring']
          end
          if hash.has_key? 'locale'
            @locale = hash['locale']
          end
          if hash.has_key? 'paymentProductFilters'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProductFilters']] unless hash['paymentProductFilters'].is_a? Hash
            @payment_product_filters = Ingenico::Connect::SDK::Domain::Hostedcheckout::PaymentProductFiltersHostedCheckout.new_from_hash(hash['paymentProductFilters'])
          end
          if hash.has_key? 'recurringPaymentsData'
            raise TypeError, "value '%s' is not a Hash" % [hash['recurringPaymentsData']] unless hash['recurringPaymentsData'].is_a? Hash
            @recurring_payments_data = Ingenico::Connect::SDK::Domain::Hostedcheckout::RecurringPaymentsData.new_from_hash(hash['recurringPaymentsData'])
          end
          if hash.has_key? 'returnCancelState'
            @return_cancel_state = hash['returnCancelState']
          end
          if hash.has_key? 'returnUrl'
            @return_url = hash['returnUrl']
          end
          if hash.has_key? 'showResultPage'
            @show_result_page = hash['showResultPage']
          end
          if hash.has_key? 'tokens'
            @tokens = hash['tokens']
          end
          if hash.has_key? 'validateShoppingCart'
            @validate_shopping_cart = hash['validateShoppingCart']
          end
          if hash.has_key? 'variant'
            @variant = hash['variant']
          end
        end
      end
    end
  end
end
