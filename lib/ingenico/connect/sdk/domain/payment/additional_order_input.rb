#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/airline_data'
require 'ingenico/connect/sdk/domain/payment/level3_summary_data'
require 'ingenico/connect/sdk/domain/payment/order_type_information'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_AdditionalOrderInput AdditionalOrderInput}
      class AdditionalOrderInput < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::AirlineData}
        attr_accessor :airline_data

        # {Ingenico::Connect::SDK::Domain::Payment::Level3SummaryData}
        #
        # Deprecated; Use Order.shoppingCart instead
        attr_accessor :level3_summary_data

        # Integer
        attr_accessor :number_of_installments

        # String
        attr_accessor :order_date

        # {Ingenico::Connect::SDK::Domain::Payment::OrderTypeInformation}
        attr_accessor :type_information

        def to_h
          hash = super
          add_to_hash(hash, 'airlineData', @airline_data)
          add_to_hash(hash, 'level3SummaryData', @level3_summary_data)
          add_to_hash(hash, 'numberOfInstallments', @number_of_installments)
          add_to_hash(hash, 'orderDate', @order_date)
          add_to_hash(hash, 'typeInformation', @type_information)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('airlineData')
            if !(hash['airlineData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['airlineData']]
            end
            @airline_data = Ingenico::Connect::SDK::Domain::Definitions::AirlineData.new_from_hash(hash['airlineData'])
          end
          if hash.has_key?('level3SummaryData')
            if !(hash['level3SummaryData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['level3SummaryData']]
            end
            @level3_summary_data = Ingenico::Connect::SDK::Domain::Payment::Level3SummaryData.new_from_hash(hash['level3SummaryData'])
          end
          if hash.has_key?('numberOfInstallments')
            @number_of_installments = hash['numberOfInstallments']
          end
          if hash.has_key?('orderDate')
            @order_date = hash['orderDate']
          end
          if hash.has_key?('typeInformation')
            if !(hash['typeInformation'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['typeInformation']]
            end
            @type_information = Ingenico::Connect::SDK::Domain::Payment::OrderTypeInformation.new_from_hash(hash['typeInformation'])
          end
        end
      end
    end
  end
end
