#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [String] card_number
      # @attr [String] cardholder_name
      # @attr [String] expiry_date
      class CardEssentials < Ingenico::Connect::SDK::DataObject

        attr_accessor :card_number

        attr_accessor :cardholder_name

        attr_accessor :expiry_date

        # @return (Hash)
        def to_h
          hash = super
          hash['cardNumber'] = @card_number unless @card_number.nil?
          hash['cardholderName'] = @cardholder_name unless @cardholder_name.nil?
          hash['expiryDate'] = @expiry_date unless @expiry_date.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'cardNumber'
            @card_number = hash['cardNumber']
          end
          if hash.has_key? 'cardholderName'
            @cardholder_name = hash['cardholderName']
          end
          if hash.has_key? 'expiryDate'
            @expiry_date = hash['expiryDate']
          end
        end
      end
    end
  end
end
