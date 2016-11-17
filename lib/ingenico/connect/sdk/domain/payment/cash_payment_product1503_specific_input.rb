#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_CashPaymentProduct1503SpecificInput CashPaymentProduct1503SpecificInput}
      class CashPaymentProduct1503SpecificInput < Ingenico::Connect::SDK::DataObject

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
