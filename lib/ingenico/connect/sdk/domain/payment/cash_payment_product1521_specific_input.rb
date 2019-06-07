#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class CashPaymentProduct1521SpecificInput < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :return_url

        def to_h
          hash = super
          add_to_hash(hash, 'returnUrl', @return_url)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('returnUrl')
            @return_url = hash['returnUrl']
          end
        end
      end
    end
  end
end
