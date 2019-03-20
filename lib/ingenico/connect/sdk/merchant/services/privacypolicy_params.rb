#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/param_request'

module Ingenico::Connect::SDK
  module Merchant
    module Services

      # Query parameters for {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/services/privacypolicy.html Get privacy policy}
      class PrivacypolicyParams < Ingenico::Connect::SDK::ParamRequest

        # String
        attr_accessor :locale

        # Integer
        attr_accessor :payment_product_id

        # Returns an Array of {Ingenico::Connect::SDK::RequestParam} objects representing the attributes of this class
        def to_request_parameters
          result = []
          add_parameter(result, 'locale', @locale)
          add_parameter(result, 'paymentProductId', @payment_product_id)
          result
        end
      end
    end
  end
end
