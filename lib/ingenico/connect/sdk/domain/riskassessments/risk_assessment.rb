#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/fraud_fields'
require 'ingenico/connect/sdk/domain/riskassessments/merchant_risk_assessment'
require 'ingenico/connect/sdk/domain/riskassessments/order_risk_assessment'

module Ingenico::Connect::SDK
  module Domain
    module Riskassessments

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::FraudFields] fraud_fields
      # @attr [Ingenico::Connect::SDK::Domain::Riskassessments::MerchantRiskAssessment] merchant
      # @attr [Ingenico::Connect::SDK::Domain::Riskassessments::OrderRiskAssessment] order
      # @attr [Integer] payment_product_id
      class RiskAssessment < Ingenico::Connect::SDK::DataObject

        attr_accessor :fraud_fields

        attr_accessor :merchant

        attr_accessor :order

        attr_accessor :payment_product_id

        # @return (Hash)
        def to_h
          hash = super
          hash['fraudFields'] = @fraud_fields.to_h unless @fraud_fields.nil?
          hash['merchant'] = @merchant.to_h unless @merchant.nil?
          hash['order'] = @order.to_h unless @order.nil?
          hash['paymentProductId'] = @payment_product_id unless @payment_product_id.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'fraudFields'
            raise TypeError, "value '%s' is not a Hash" % [hash['fraudFields']] unless hash['fraudFields'].is_a? Hash
            @fraud_fields = Ingenico::Connect::SDK::Domain::Definitions::FraudFields.new_from_hash(hash['fraudFields'])
          end
          if hash.has_key? 'merchant'
            raise TypeError, "value '%s' is not a Hash" % [hash['merchant']] unless hash['merchant'].is_a? Hash
            @merchant = Ingenico::Connect::SDK::Domain::Riskassessments::MerchantRiskAssessment.new_from_hash(hash['merchant'])
          end
          if hash.has_key? 'order'
            raise TypeError, "value '%s' is not a Hash" % [hash['order']] unless hash['order'].is_a? Hash
            @order = Ingenico::Connect::SDK::Domain::Riskassessments::OrderRiskAssessment.new_from_hash(hash['order'])
          end
          if hash.has_key? 'paymentProductId'
            @payment_product_id = hash['paymentProductId']
          end
        end
      end
    end
  end
end
