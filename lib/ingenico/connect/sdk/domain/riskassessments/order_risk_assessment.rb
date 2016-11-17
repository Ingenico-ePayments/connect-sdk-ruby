#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/additional_order_input_airline_data'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/riskassessments/customer_risk_assessment'

module Ingenico::Connect::SDK
  module Domain
    module Riskassessments

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_OrderRiskAssessment OrderRiskAssessment}
      class OrderRiskAssessment < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::AdditionalOrderInputAirlineData}
        attr_accessor :additional_input

        # {Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney}
        attr_accessor :amount_of_money

        # {Ingenico::Connect::SDK::Domain::Riskassessments::CustomerRiskAssessment}
        attr_accessor :customer

        def to_h
          hash = super
          add_to_hash(hash, 'additionalInput', @additional_input)
          add_to_hash(hash, 'amountOfMoney', @amount_of_money)
          add_to_hash(hash, 'customer', @customer)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('additionalInput')
            if !(hash['additionalInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['additionalInput']]
            end
            @additional_input = Ingenico::Connect::SDK::Domain::Definitions::AdditionalOrderInputAirlineData.new_from_hash(hash['additionalInput'])
          end
          if hash.has_key?('amountOfMoney')
            if !(hash['amountOfMoney'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']]
            end
            @amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
          end
          if hash.has_key?('customer')
            if !(hash['customer'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['customer']]
            end
            @customer = Ingenico::Connect::SDK::Domain::Riskassessments::CustomerRiskAssessment.new_from_hash(hash['customer'])
          end
        end
      end
    end
  end
end
