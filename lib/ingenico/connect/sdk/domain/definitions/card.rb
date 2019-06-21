#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/card_without_cvv'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [String] cvv
      class Card < Ingenico::Connect::SDK::Domain::Definitions::CardWithoutCvv

        attr_accessor :cvv

        # @return (Hash)
        def to_h
          hash = super
          hash['cvv'] = @cvv unless @cvv.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'cvv'
            @cvv = hash['cvv']
          end
        end
      end
    end
  end
end
