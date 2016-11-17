#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/domain/definitions/card_without_cvv'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_Card Card}
      class Card < Ingenico::Connect::SDK::Domain::Definitions::CardWithoutCvv

        # String
        attr_accessor :cvv

        def to_h
          hash = super
          add_to_hash(hash, 'cvv', @cvv)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('cvv')
            @cvv = hash['cvv']
          end
        end
      end
    end
  end
end
