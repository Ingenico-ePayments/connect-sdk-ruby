#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/hostedcheckout/payment_product_filters_hosted_checkout'

module Ingenico::Connect::SDK
  module Domain
    module Hostedcheckout

      class HostedCheckoutSpecificInput < Ingenico::Connect::SDK::DataObject

        # true/false
        attr_accessor :is_recurring

        # String
        attr_accessor :locale

        # {Ingenico::Connect::SDK::Domain::Hostedcheckout::PaymentProductFiltersHostedCheckout}
        attr_accessor :payment_product_filters

        # true/false
        attr_accessor :return_cancel_state

        # String
        attr_accessor :return_url

        # true/false
        attr_accessor :show_result_page

        # String
        attr_accessor :tokens

        # String
        attr_accessor :variant

        def to_h
          hash = super
          add_to_hash(hash, 'isRecurring', @is_recurring)
          add_to_hash(hash, 'locale', @locale)
          add_to_hash(hash, 'paymentProductFilters', @payment_product_filters)
          add_to_hash(hash, 'returnCancelState', @return_cancel_state)
          add_to_hash(hash, 'returnUrl', @return_url)
          add_to_hash(hash, 'showResultPage', @show_result_page)
          add_to_hash(hash, 'tokens', @tokens)
          add_to_hash(hash, 'variant', @variant)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('isRecurring')
            @is_recurring = hash['isRecurring']
          end
          if hash.has_key?('locale')
            @locale = hash['locale']
          end
          if hash.has_key?('paymentProductFilters')
            if !(hash['paymentProductFilters'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProductFilters']]
            end
            @payment_product_filters = Ingenico::Connect::SDK::Domain::Hostedcheckout::PaymentProductFiltersHostedCheckout.new_from_hash(hash['paymentProductFilters'])
          end
          if hash.has_key?('returnCancelState')
            @return_cancel_state = hash['returnCancelState']
          end
          if hash.has_key?('returnUrl')
            @return_url = hash['returnUrl']
          end
          if hash.has_key?('showResultPage')
            @show_result_page = hash['showResultPage']
          end
          if hash.has_key?('tokens')
            @tokens = hash['tokens']
          end
          if hash.has_key?('variant')
            @variant = hash['variant']
          end
        end
      end
    end
  end
end
