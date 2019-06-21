#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] security_indicator
      class PaymentProduct836SpecificOutput < Ingenico::Connect::SDK::DataObject

        attr_accessor :security_indicator

        # @return (Hash)
        def to_h
          hash = super
          hash['securityIndicator'] = @security_indicator unless @security_indicator.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'securityIndicator'
            @security_indicator = hash['securityIndicator']
          end
        end
      end
    end
  end
end
