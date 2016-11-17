#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Hostedcheckout

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_CreateHostedCheckoutResponse CreateHostedCheckoutResponse}
      class CreateHostedCheckoutResponse < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :returnmac

        # String
        attr_accessor :hosted_checkout_id

        # Array of String
        attr_accessor :invalid_tokens

        # String
        attr_accessor :partial_redirect_url

        def to_h
          hash = super
          add_to_hash(hash, 'RETURNMAC', @returnmac)
          add_to_hash(hash, 'hostedCheckoutId', @hosted_checkout_id)
          add_to_hash(hash, 'invalidTokens', @invalid_tokens)
          add_to_hash(hash, 'partialRedirectUrl', @partial_redirect_url)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('RETURNMAC')
            @returnmac = hash['RETURNMAC']
          end
          if hash.has_key?('hostedCheckoutId')
            @hosted_checkout_id = hash['hostedCheckoutId']
          end
          if hash.has_key?('invalidTokens')
            if !(hash['invalidTokens'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['invalidTokens']]
            end
            @invalid_tokens = []
            hash['invalidTokens'].each do |e|
              @invalid_tokens << e
            end
          end
          if hash.has_key?('partialRedirectUrl')
            @partial_redirect_url = hash['partialRedirectUrl']
          end
        end
      end
    end
  end
end
