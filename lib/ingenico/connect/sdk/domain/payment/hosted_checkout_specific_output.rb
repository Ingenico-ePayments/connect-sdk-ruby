#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] hosted_checkout_id
          # @attr [String] variant
          class HostedCheckoutSpecificOutput < Ingenico::Connect::SDK::DataObject

            attr_accessor :hosted_checkout_id

            attr_accessor :variant

            # @return (Hash)
            def to_h
              hash = super
              hash['hostedCheckoutId'] = @hosted_checkout_id unless @hosted_checkout_id.nil?
              hash['variant'] = @variant unless @variant.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'hostedCheckoutId'
                @hosted_checkout_id = hash['hostedCheckoutId']
              end
              if hash.has_key? 'variant'
                @variant = hash['variant']
              end
            end
          end
        end
      end
    end
  end
end
