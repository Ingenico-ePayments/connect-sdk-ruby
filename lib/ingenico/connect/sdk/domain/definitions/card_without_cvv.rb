#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/card_essentials'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [String] cardholder_name
      # @attr [String] issue_number
      class CardWithoutCvv < Ingenico::Connect::SDK::Domain::Definitions::CardEssentials

        attr_accessor :cardholder_name

        attr_accessor :issue_number

        # @return (Hash)
        def to_h
          hash = super
          hash['cardholderName'] = @cardholder_name unless @cardholder_name.nil?
          hash['issueNumber'] = @issue_number unless @issue_number.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'cardholderName'
            @cardholder_name = hash['cardholderName']
          end
          if hash.has_key? 'issueNumber'
            @issue_number = hash['issueNumber']
          end
        end
      end
    end
  end
end
