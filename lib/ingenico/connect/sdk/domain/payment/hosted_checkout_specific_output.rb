#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class HostedCheckoutSpecificOutput < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :hosted_checkout_id

        # String
        attr_accessor :variant

        def to_h
          hash = super
          add_to_hash(hash, 'hostedCheckoutId', @hosted_checkout_id)
          add_to_hash(hash, 'variant', @variant)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('hostedCheckoutId')
            @hosted_checkout_id = hash['hostedCheckoutId']
          end
          if hash.has_key?('variant')
            @variant = hash['variant']
          end
        end
      end
    end
  end
end
