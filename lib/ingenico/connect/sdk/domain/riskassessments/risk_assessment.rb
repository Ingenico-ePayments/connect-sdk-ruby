#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/fraud_fields'
require 'ingenico/connect/sdk/domain/riskassessments/order_risk_assessment'

module Ingenico::Connect::SDK
  module Domain
    module Riskassessments

      class RiskAssessment < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::FraudFields}
        attr_accessor :fraud_fields

        # {Ingenico::Connect::SDK::Domain::Riskassessments::OrderRiskAssessment}
        attr_accessor :order

        # Integer
        attr_accessor :payment_product_id

        def to_h
          hash = super
          add_to_hash(hash, 'fraudFields', @fraud_fields)
          add_to_hash(hash, 'order', @order)
          add_to_hash(hash, 'paymentProductId', @payment_product_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('fraudFields')
            if !(hash['fraudFields'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['fraudFields']]
            end
            @fraud_fields = Ingenico::Connect::SDK::Domain::Definitions::FraudFields.new_from_hash(hash['fraudFields'])
          end
          if hash.has_key?('order')
            if !(hash['order'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['order']]
            end
            @order = Ingenico::Connect::SDK::Domain::Riskassessments::OrderRiskAssessment.new_from_hash(hash['order'])
          end
          if hash.has_key?('paymentProductId')
            @payment_product_id = hash['paymentProductId']
          end
        end
      end
    end
  end
end
