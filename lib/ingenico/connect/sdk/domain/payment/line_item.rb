#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/payment/line_item_invoice_data'
require 'ingenico/connect/sdk/domain/payment/line_item_level3_interchange_information'
require 'ingenico/connect/sdk/domain/payment/order_line_details'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_LineItem LineItem}
      class LineItem < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney}
        attr_accessor :amount_of_money

        # {Ingenico::Connect::SDK::Domain::Payment::LineItemInvoiceData}
        attr_accessor :invoice_data

        # {Ingenico::Connect::SDK::Domain::Payment::LineItemLevel3InterchangeInformation}
        #
        # Deprecated; Use orderLineDetails instead
        attr_accessor :level3_interchange_information

        # {Ingenico::Connect::SDK::Domain::Payment::OrderLineDetails}
        attr_accessor :order_line_details

        def to_h
          hash = super
          add_to_hash(hash, 'amountOfMoney', @amount_of_money)
          add_to_hash(hash, 'invoiceData', @invoice_data)
          add_to_hash(hash, 'level3InterchangeInformation', @level3_interchange_information)
          add_to_hash(hash, 'orderLineDetails', @order_line_details)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('amountOfMoney')
            if !(hash['amountOfMoney'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']]
            end
            @amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
          end
          if hash.has_key?('invoiceData')
            if !(hash['invoiceData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['invoiceData']]
            end
            @invoice_data = Ingenico::Connect::SDK::Domain::Payment::LineItemInvoiceData.new_from_hash(hash['invoiceData'])
          end
          if hash.has_key?('level3InterchangeInformation')
            if !(hash['level3InterchangeInformation'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['level3InterchangeInformation']]
            end
            @level3_interchange_information = Ingenico::Connect::SDK::Domain::Payment::LineItemLevel3InterchangeInformation.new_from_hash(hash['level3InterchangeInformation'])
          end
          if hash.has_key?('orderLineDetails')
            if !(hash['orderLineDetails'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['orderLineDetails']]
            end
            @order_line_details = Ingenico::Connect::SDK::Domain::Payment::OrderLineDetails.new_from_hash(hash['orderLineDetails'])
          end
        end
      end
    end
  end
end
