#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/card_without_cvv'

module Ingenico::Connect::SDK
  module Domain
    module Token

      class TokenCardData < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::CardWithoutCvv}
        attr_accessor :card_without_cvv

        # String
        attr_accessor :first_transaction_date

        # String
        attr_accessor :provider_reference

        def to_h
          hash = super
          add_to_hash(hash, 'cardWithoutCvv', @card_without_cvv)
          add_to_hash(hash, 'firstTransactionDate', @first_transaction_date)
          add_to_hash(hash, 'providerReference', @provider_reference)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('cardWithoutCvv')
            if !(hash['cardWithoutCvv'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['cardWithoutCvv']]
            end
            @card_without_cvv = Ingenico::Connect::SDK::Domain::Definitions::CardWithoutCvv.new_from_hash(hash['cardWithoutCvv'])
          end
          if hash.has_key?('firstTransactionDate')
            @first_transaction_date = hash['firstTransactionDate']
          end
          if hash.has_key?('providerReference')
            @provider_reference = hash['providerReference']
          end
        end
      end
    end
  end
end
