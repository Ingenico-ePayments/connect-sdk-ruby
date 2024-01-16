#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/payment/line_item_invoice_data'
require 'ingenico/connect/sdk/domain/payment/line_item_level3_interchange_information'
require 'ingenico/connect/sdk/domain/payment/order_line_details'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney] amount_of_money
          # @attr [Ingenico::Connect::SDK::Domain::Payment::LineItemInvoiceData] invoice_data
          # @attr [Ingenico::Connect::SDK::Domain::Payment::LineItemLevel3InterchangeInformation] level3_interchange_information
          # @attr [Ingenico::Connect::SDK::Domain::Payment::OrderLineDetails] order_line_details
          class LineItem < Ingenico::Connect::SDK::DataObject

            attr_accessor :amount_of_money

            attr_accessor :invoice_data

            #
            # @deprecated Use orderLineDetails instead
            attr_accessor :level3_interchange_information

            attr_accessor :order_line_details

            # @return (Hash)
            def to_h
              hash = super
              hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
              hash['invoiceData'] = @invoice_data.to_h unless @invoice_data.nil?
              hash['level3InterchangeInformation'] = @level3_interchange_information.to_h unless @level3_interchange_information.nil?
              hash['orderLineDetails'] = @order_line_details.to_h unless @order_line_details.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amountOfMoney'
                raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
                @amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
              end
              if hash.has_key? 'invoiceData'
                raise TypeError, "value '%s' is not a Hash" % [hash['invoiceData']] unless hash['invoiceData'].is_a? Hash
                @invoice_data = Ingenico::Connect::SDK::Domain::Payment::LineItemInvoiceData.new_from_hash(hash['invoiceData'])
              end
              if hash.has_key? 'level3InterchangeInformation'
                raise TypeError, "value '%s' is not a Hash" % [hash['level3InterchangeInformation']] unless hash['level3InterchangeInformation'].is_a? Hash
                @level3_interchange_information = Ingenico::Connect::SDK::Domain::Payment::LineItemLevel3InterchangeInformation.new_from_hash(hash['level3InterchangeInformation'])
              end
              if hash.has_key? 'orderLineDetails'
                raise TypeError, "value '%s' is not a Hash" % [hash['orderLineDetails']] unless hash['orderLineDetails'].is_a? Hash
                @order_line_details = Ingenico::Connect::SDK::Domain::Payment::OrderLineDetails.new_from_hash(hash['orderLineDetails'])
              end
            end
          end
        end
      end
    end
  end
end
