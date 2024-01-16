#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/card_without_cvv'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Token
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::CardWithoutCvv] card_without_cvv
          # @attr [String] first_transaction_date
          # @attr [String] provider_reference
          class TokenCardData < Ingenico::Connect::SDK::DataObject

            attr_accessor :card_without_cvv

            attr_accessor :first_transaction_date

            attr_accessor :provider_reference

            # @return (Hash)
            def to_h
              hash = super
              hash['cardWithoutCvv'] = @card_without_cvv.to_h unless @card_without_cvv.nil?
              hash['firstTransactionDate'] = @first_transaction_date unless @first_transaction_date.nil?
              hash['providerReference'] = @provider_reference unless @provider_reference.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'cardWithoutCvv'
                raise TypeError, "value '%s' is not a Hash" % [hash['cardWithoutCvv']] unless hash['cardWithoutCvv'].is_a? Hash
                @card_without_cvv = Ingenico::Connect::SDK::Domain::Definitions::CardWithoutCvv.new_from_hash(hash['cardWithoutCvv'])
              end
              if hash.has_key? 'firstTransactionDate'
                @first_transaction_date = hash['firstTransactionDate']
              end
              if hash.has_key? 'providerReference'
                @provider_reference = hash['providerReference']
              end
            end
          end
        end
      end
    end
  end
end
