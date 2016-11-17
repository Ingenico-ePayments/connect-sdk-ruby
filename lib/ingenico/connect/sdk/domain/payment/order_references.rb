#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/order_invoice_data'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_OrderReferences OrderReferences}
      class OrderReferences < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :descriptor

        # {Ingenico::Connect::SDK::Domain::Payment::OrderInvoiceData}
        attr_accessor :invoice_data

        # Integer
        attr_accessor :merchant_order_id

        # String
        attr_accessor :merchant_reference

        def to_h
          hash = super
          add_to_hash(hash, 'descriptor', @descriptor)
          add_to_hash(hash, 'invoiceData', @invoice_data)
          add_to_hash(hash, 'merchantOrderId', @merchant_order_id)
          add_to_hash(hash, 'merchantReference', @merchant_reference)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('descriptor')
            @descriptor = hash['descriptor']
          end
          if hash.has_key?('invoiceData')
            if !(hash['invoiceData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['invoiceData']]
            end
            @invoice_data = Ingenico::Connect::SDK::Domain::Payment::OrderInvoiceData.new_from_hash(hash['invoiceData'])
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
