#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_CardEssentials CardEssentials}
      class CardEssentials < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :card_number

        # String
        attr_accessor :expiry_date

        def to_h
          hash = super
          add_to_hash(hash, 'cardNumber', @card_number)
          add_to_hash(hash, 'expiryDate', @expiry_date)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('cardNumber')
            @card_number = hash['cardNumber']
          end
          if hash.has_key?('expiryDate')
            @expiry_date = hash['expiryDate']
          end
        end
      end
    end
  end
end
