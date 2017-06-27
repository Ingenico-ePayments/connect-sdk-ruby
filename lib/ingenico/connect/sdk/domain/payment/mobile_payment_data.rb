#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class MobilePaymentData < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :dpan

        # String
        attr_accessor :expiry_date

        def to_h
          hash = super
          add_to_hash(hash, 'dpan', @dpan)
          add_to_hash(hash, 'expiryDate', @expiry_date)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('dpan')
            @dpan = hash['dpan']
          end
          if hash.has_key?('expiryDate')
            @expiry_date = hash['expiryDate']
          end
        end
      end
    end
  end
end
