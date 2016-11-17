#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/param_request'

module Ingenico::Connect::SDK
  module Merchant
    module Services

      # Query parameters for {https://developer.globalcollect.com/documentation/api/server/#__merchantId__services_convert_amount_get Convert amount}
      class ConvertAmountParams < Ingenico::Connect::SDK::ParamRequest

        # String
        attr_accessor :source

        # Integer
        attr_accessor :amount

        # String
        attr_accessor :target
        attr_accessor :source, :amount, :target

        # Returns an Array of {Ingenico::Connect::SDK::RequestParam} objects representing the attributes of this class
        def to_request_parameters
          result = []
          add_parameter(result, 'source', @source)
          add_parameter(result, 'amount', @amount)
          add_parameter(result, 'target', @target)
          result
        end
      end
    end
  end
end
