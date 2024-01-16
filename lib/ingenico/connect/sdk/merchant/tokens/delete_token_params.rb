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
        module Tokens
          # Query parameters for {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/tokens/delete.html Delete token}
          # @attr [String] mandate_cancel_date
          class DeleteTokenParams < Ingenico::Connect::SDK::ParamRequest

            attr_accessor :mandate_cancel_date

            # @return [Array<Ingenico::Connect::SDK::RequestParam>] representing the attributes of this class
            def to_request_parameters
              result = []
              result << RequestParam.new('mandateCancelDate', @mandate_cancel_date) unless @mandate_cancel_date.nil?
              result
            end
          end
        end
      end
    end
  end
end
