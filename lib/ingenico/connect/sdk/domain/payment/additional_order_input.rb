#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/airline_data'
require 'ingenico/connect/sdk/domain/payment/level3_summary_data'
require 'ingenico/connect/sdk/domain/payment/order_type_information'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::AirlineData] airline_data
      # @attr [Ingenico::Connect::SDK::Domain::Payment::Level3SummaryData] level3_summary_data
      # @attr [Integer] number_of_installments
      # @attr [String] order_date
      # @attr [Ingenico::Connect::SDK::Domain::Payment::OrderTypeInformation] type_information
      class AdditionalOrderInput < Ingenico::Connect::SDK::DataObject

        attr_accessor :airline_data

        #
        # @deprecated Use Order.shoppingCart.amountBreakdown instead
        attr_accessor :level3_summary_data

        attr_accessor :number_of_installments

        attr_accessor :order_date

        attr_accessor :type_information

        # @return (Hash)
        def to_h
          hash = super
          hash['airlineData'] = @airline_data.to_h unless @airline_data.nil?
          hash['level3SummaryData'] = @level3_summary_data.to_h unless @level3_summary_data.nil?
          hash['numberOfInstallments'] = @number_of_installments unless @number_of_installments.nil?
          hash['orderDate'] = @order_date unless @order_date.nil?
          hash['typeInformation'] = @type_information.to_h unless @type_information.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'airlineData'
            raise TypeError, "value '%s' is not a Hash" % [hash['airlineData']] unless hash['airlineData'].is_a? Hash
            @airline_data = Ingenico::Connect::SDK::Domain::Definitions::AirlineData.new_from_hash(hash['airlineData'])
          end
          if hash.has_key? 'level3SummaryData'
            raise TypeError, "value '%s' is not a Hash" % [hash['level3SummaryData']] unless hash['level3SummaryData'].is_a? Hash
            @level3_summary_data = Ingenico::Connect::SDK::Domain::Payment::Level3SummaryData.new_from_hash(hash['level3SummaryData'])
          end
          if hash.has_key? 'numberOfInstallments'
            @number_of_installments = hash['numberOfInstallments']
          end
          if hash.has_key? 'orderDate'
            @order_date = hash['orderDate']
          end
          if hash.has_key? 'typeInformation'
            raise TypeError, "value '%s' is not a Hash" % [hash['typeInformation']] unless hash['typeInformation'].is_a? Hash
            @type_information = Ingenico::Connect::SDK::Domain::Payment::OrderTypeInformation.new_from_hash(hash['typeInformation'])
          end
        end
      end
    end
  end
end
