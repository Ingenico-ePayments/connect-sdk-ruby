#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/card_essentials'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class PaymentProduct3201SpecificOutput < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::CardEssentials}
        attr_accessor :card

        def to_h
          hash = super
          add_to_hash(hash, 'card', @card)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('card')
            if !(hash['card'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['card']]
            end
            @card = Ingenico::Connect::SDK::Domain::Definitions::CardEssentials.new_from_hash(hash['card'])
          end
        end
      end
    end
  end
end
