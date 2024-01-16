#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/definitions/card_essentials'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Definitions
          # @attr [String] issue_number
          class CardWithoutCvv < Ingenico::Connect::SDK::Domain::Definitions::CardEssentials

            attr_accessor :issue_number

            # @return (Hash)
            def to_h
              hash = super
              hash['issueNumber'] = @issue_number unless @issue_number.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'issueNumber'
                @issue_number = hash['issueNumber']
              end
            end
          end
        end
      end
    end
  end
end
