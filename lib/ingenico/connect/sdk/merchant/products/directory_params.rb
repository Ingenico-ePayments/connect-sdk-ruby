#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/param_request'

module Ingenico::Connect::SDK
  module Merchant
    module Products

      # Query parameters for {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/products/directory.html Get payment product directory}
      class DirectoryParams < Ingenico::Connect::SDK::ParamRequest

        # String
        attr_accessor :country_code

        # String
        attr_accessor :currency_code

        # Returns an Array of {Ingenico::Connect::SDK::RequestParam} objects representing the attributes of this class
        def to_request_parameters
          result = []
          add_parameter(result, 'countryCode', @country_code)
          add_parameter(result, 'currencyCode', @currency_code)
          result
        end
      end
    end
  end
end
