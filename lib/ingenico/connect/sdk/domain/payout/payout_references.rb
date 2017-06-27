#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payout

      class PayoutReferences < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :invoice_number

        # Integer
        attr_accessor :merchant_order_id

        # String
        attr_accessor :merchant_reference

        def to_h
          hash = super
          add_to_hash(hash, 'invoiceNumber', @invoice_number)
          add_to_hash(hash, 'merchantOrderId', @merchant_order_id)
          add_to_hash(hash, 'merchantReference', @merchant_reference)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('invoiceNumber')
            @invoice_number = hash['invoiceNumber']
          end
          if hash.has_key?('merchantOrderId')
            @merchant_order_id = hash['merchantOrderId']
          end
          if hash.has_key?('merchantReference')
            @merchant_reference = hash['merchantReference']
          end
        end
      end
    end
  end
end
