#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/additional_order_input_airline_data'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/riskassessments/customer_risk_assessment'
require 'ingenico/connect/sdk/domain/riskassessments/shipping_risk_assessment'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Riskassessments
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::AdditionalOrderInputAirlineData] additional_input
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney] amount_of_money
          # @attr [Ingenico::Connect::SDK::Domain::Riskassessments::CustomerRiskAssessment] customer
          # @attr [Ingenico::Connect::SDK::Domain::Riskassessments::ShippingRiskAssessment] shipping
          class OrderRiskAssessment < Ingenico::Connect::SDK::DataObject

            attr_accessor :additional_input

            attr_accessor :amount_of_money

            attr_accessor :customer

            attr_accessor :shipping

            # @return (Hash)
            def to_h
              hash = super
              hash['additionalInput'] = @additional_input.to_h unless @additional_input.nil?
              hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
              hash['customer'] = @customer.to_h unless @customer.nil?
              hash['shipping'] = @shipping.to_h unless @shipping.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'additionalInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['additionalInput']] unless hash['additionalInput'].is_a? Hash
                @additional_input = Ingenico::Connect::SDK::Domain::Definitions::AdditionalOrderInputAirlineData.new_from_hash(hash['additionalInput'])
              end
              if hash.has_key? 'amountOfMoney'
                raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
                @amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
              end
              if hash.has_key? 'customer'
                raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
                @customer = Ingenico::Connect::SDK::Domain::Riskassessments::CustomerRiskAssessment.new_from_hash(hash['customer'])
              end
              if hash.has_key? 'shipping'
                raise TypeError, "value '%s' is not a Hash" % [hash['shipping']] unless hash['shipping'].is_a? Hash
                @shipping = Ingenico::Connect::SDK::Domain::Riskassessments::ShippingRiskAssessment.new_from_hash(hash['shipping'])
              end
            end
          end
        end
      end
    end
  end
end
