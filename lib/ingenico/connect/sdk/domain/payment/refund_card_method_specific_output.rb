#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/card_essentials'
require 'ingenico/connect/sdk/domain/payment/refund_method_specific_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] authorisation_code
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::CardEssentials] card
      class RefundCardMethodSpecificOutput < Ingenico::Connect::SDK::Domain::Payment::RefundMethodSpecificOutput

        attr_accessor :authorisation_code

        attr_accessor :card

        # @return (Hash)
        def to_h
          hash = super
          hash['authorisationCode'] = @authorisation_code unless @authorisation_code.nil?
          hash['card'] = @card.to_h unless @card.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'authorisationCode'
            @authorisation_code = hash['authorisationCode']
          end
          if hash.has_key? 'card'
            raise TypeError, "value '%s' is not a Hash" % [hash['card']] unless hash['card'].is_a? Hash
            @card = Ingenico::Connect::SDK::Domain::Definitions::CardEssentials.new_from_hash(hash['card'])
          end
        end
      end
    end
  end
end
