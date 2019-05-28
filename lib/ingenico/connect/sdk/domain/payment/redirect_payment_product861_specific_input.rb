#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class RedirectPaymentProduct861SpecificInput < Ingenico::Connect::SDK::DataObject

        # true/false
        attr_accessor :mobile_device

        def to_h
          hash = super
          add_to_hash(hash, 'mobileDevice', @mobile_device)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('mobileDevice')
            @mobile_device = hash['mobileDevice']
          end
        end
      end
    end
  end
end
