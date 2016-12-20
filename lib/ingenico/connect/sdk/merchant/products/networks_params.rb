#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/param_request'

module Ingenico::Connect::SDK
  module Merchant
    module Products

      # Query parameters for {https://developer.globalcollect.com/documentation/api/server/#__merchantId__products__paymentProductId__networks_get Get payment product networks}
      class NetworksParams < Ingenico::Connect::SDK::ParamRequest

        # String
        attr_accessor :country_code

        # String
        attr_accessor :currency_code

        # Integer
        attr_accessor :amount

        # true/false
        attr_accessor :is_recurring
        attr_accessor :country_code, :currency_code, :amount, :is_recurring

        # Returns an Array of {Ingenico::Connect::SDK::RequestParam} objects representing the attributes of this class
        def to_request_parameters
          result = []
          add_parameter(result, 'countryCode', @country_code)
          add_parameter(result, 'currencyCode', @currency_code)
          add_parameter(result, 'amount', @amount)
          add_parameter(result, 'isRecurring', @is_recurring)
          result
        end
      end
    end
  end
end
