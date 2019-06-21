#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payout

      # @attr [String] invoice_number
      # @attr [Integer] merchant_order_id
      # @attr [String] merchant_reference
      class PayoutReferences < Ingenico::Connect::SDK::DataObject

        attr_accessor :invoice_number

        attr_accessor :merchant_order_id

        attr_accessor :merchant_reference

        # @return (Hash)
        def to_h
          hash = super
          hash['invoiceNumber'] = @invoice_number unless @invoice_number.nil?
          hash['merchantOrderId'] = @merchant_order_id unless @merchant_order_id.nil?
          hash['merchantReference'] = @merchant_reference unless @merchant_reference.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'invoiceNumber'
            @invoice_number = hash['invoiceNumber']
          end
          if hash.has_key? 'merchantOrderId'
            @merchant_order_id = hash['merchantOrderId']
          end
          if hash.has_key? 'merchantReference'
            @merchant_reference = hash['merchantReference']
          end
        end
      end
    end
  end
end
