#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] funding_type
      # @attr [String] purchase_type
      # @attr [String] transaction_type
      # @attr [String] usage_type
      class OrderTypeInformation < Ingenico::Connect::SDK::DataObject

        attr_accessor :funding_type

        attr_accessor :purchase_type

        attr_accessor :transaction_type

        attr_accessor :usage_type

        # @return (Hash)
        def to_h
          hash = super
          hash['fundingType'] = @funding_type unless @funding_type.nil?
          hash['purchaseType'] = @purchase_type unless @purchase_type.nil?
          hash['transactionType'] = @transaction_type unless @transaction_type.nil?
          hash['usageType'] = @usage_type unless @usage_type.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'fundingType'
            @funding_type = hash['fundingType']
          end
          if hash.has_key? 'purchaseType'
            @purchase_type = hash['purchaseType']
          end
          if hash.has_key? 'transactionType'
            @transaction_type = hash['transactionType']
          end
          if hash.has_key? 'usageType'
            @usage_type = hash['usageType']
          end
        end
      end
    end
  end
end
