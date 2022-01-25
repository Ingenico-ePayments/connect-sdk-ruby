#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'

module Ingenico::Connect::SDK
  module Domain
    module Services

      # @attr [String] acquirer_reference_number
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney] amount_of_money
      # @attr [String] payment_id
      # @attr [String] retrieval_reference_number
      class SettlementDetails < Ingenico::Connect::SDK::DataObject

        attr_accessor :acquirer_reference_number

        attr_accessor :amount_of_money

        attr_accessor :payment_id

        attr_accessor :retrieval_reference_number

        # @return (Hash)
        def to_h
          hash = super
          hash['acquirerReferenceNumber'] = @acquirer_reference_number unless @acquirer_reference_number.nil?
          hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
          hash['paymentId'] = @payment_id unless @payment_id.nil?
          hash['retrievalReferenceNumber'] = @retrieval_reference_number unless @retrieval_reference_number.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'acquirerReferenceNumber'
            @acquirer_reference_number = hash['acquirerReferenceNumber']
          end
          if hash.has_key? 'amountOfMoney'
            raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
            @amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
          end
          if hash.has_key? 'paymentId'
            @payment_id = hash['paymentId']
          end
          if hash.has_key? 'retrievalReferenceNumber'
            @retrieval_reference_number = hash['retrievalReferenceNumber']
          end
        end
      end
    end
  end
end
