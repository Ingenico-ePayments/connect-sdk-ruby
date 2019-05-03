#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class RedirectionData < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :return_url

        # String
        attr_accessor :variant

        def to_h
          hash = super
          add_to_hash(hash, 'returnUrl', @return_url)
          add_to_hash(hash, 'variant', @variant)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('returnUrl')
            @return_url = hash['returnUrl']
          end
          if hash.has_key?('variant')
            @variant = hash['variant']
          end
        end
      end
    end
  end
end
