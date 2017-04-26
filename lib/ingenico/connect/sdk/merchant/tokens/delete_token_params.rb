#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/param_request'

module Ingenico::Connect::SDK
  module Merchant
    module Tokens

      # Query parameters for {https://developer.globalcollect.com/documentation/api/server/#__merchantId__tokens__tokenId__delete Delete token}
      class DeleteTokenParams < Ingenico::Connect::SDK::ParamRequest

        # String
        attr_accessor :mandate_cancel_date

        # Returns an Array of {Ingenico::Connect::SDK::RequestParam} objects representing the attributes of this class
        def to_request_parameters
          result = []
          add_parameter(result, 'mandateCancelDate', @mandate_cancel_date)
          result
        end
      end
    end
  end
end
