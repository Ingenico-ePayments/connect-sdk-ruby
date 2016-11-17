#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/param_request'

module Ingenico::Connect::SDK
  module Merchant
    module Products

      # Query parameters for {https://developer.globalcollect.com/documentation/api/server/#__merchantId__products__paymentProductId__get Get payment product}
      class GetProductParams < Ingenico::Connect::SDK::ParamRequest

        # Integer
        attr_accessor :amount

        # Array of String
        attr_accessor :hide

        # true/false
        attr_accessor :is_recurring

        # String
        attr_accessor :country_code

        # String
        attr_accessor :locale

        # String
        attr_accessor :currency_code
        attr_accessor :amount, :hide, :is_recurring, :country_code, :locale, :currency_code

        # Adds the parameter _value_ to the _hide_ Array
        def add_hide(value)
          unless @hide
            @hide = []
          end
          @hide << value
        end

        # Returns an Array of {Ingenico::Connect::SDK::RequestParam} objects representing the attributes of this class
        def to_request_parameters
          result = []
          add_parameter(result, 'amount', @amount)
          add_parameter(result, 'hide', @hide)
          add_parameter(result, 'isRecurring', @is_recurring)
          add_parameter(result, 'countryCode', @country_code)
          add_parameter(result, 'locale', @locale)
          add_parameter(result, 'currencyCode', @currency_code)
          result
        end
      end
    end
  end
end
