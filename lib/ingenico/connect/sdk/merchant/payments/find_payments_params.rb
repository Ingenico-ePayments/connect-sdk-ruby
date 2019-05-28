#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/param_request'

module Ingenico::Connect::SDK
  module Merchant
    module Payments

      # Query parameters for {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/payments/find.html Find payments}
      class FindPaymentsParams < Ingenico::Connect::SDK::ParamRequest

        # String
        attr_accessor :hosted_checkout_id

        # String
        attr_accessor :merchant_reference

        # Integer
        attr_accessor :merchant_order_id

        # Integer
        attr_accessor :offset

        # Integer
        attr_accessor :limit

        # Returns an Array of {Ingenico::Connect::SDK::RequestParam} objects representing the attributes of this class
        def to_request_parameters
          result = []
          add_parameter(result, 'hostedCheckoutId', @hosted_checkout_id)
          add_parameter(result, 'merchantReference', @merchant_reference)
          add_parameter(result, 'merchantOrderId', @merchant_order_id)
          add_parameter(result, 'offset', @offset)
          add_parameter(result, 'limit', @limit)
          result
        end
      end
    end
  end
end
