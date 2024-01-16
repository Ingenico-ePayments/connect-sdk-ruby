#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/card_essentials'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::CardEssentials] card
          class PaymentProduct3201SpecificOutput < Ingenico::Connect::SDK::DataObject

            attr_accessor :card

            # @return (Hash)
            def to_h
              hash = super
              hash['card'] = @card.to_h unless @card.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'card'
                raise TypeError, "value '%s' is not a Hash" % [hash['card']] unless hash['card'].is_a? Hash
                @card = Ingenico::Connect::SDK::Domain::Definitions::CardEssentials.new_from_hash(hash['card'])
              end
            end
          end
        end
      end
    end
  end
end
