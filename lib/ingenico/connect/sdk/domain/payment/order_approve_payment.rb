#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/additional_order_input_airline_data'
require 'ingenico/connect/sdk/domain/payment/customer_approve_payment'
require 'ingenico/connect/sdk/domain/payment/order_references_approve_payment'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::AdditionalOrderInputAirlineData] additional_input
      # @attr [Ingenico::Connect::SDK::Domain::Payment::CustomerApprovePayment] customer
      # @attr [Ingenico::Connect::SDK::Domain::Payment::OrderReferencesApprovePayment] references
      class OrderApprovePayment < Ingenico::Connect::SDK::DataObject

        attr_accessor :additional_input

        attr_accessor :customer

        attr_accessor :references

        # @return (Hash)
        def to_h
          hash = super
          hash['additionalInput'] = @additional_input.to_h unless @additional_input.nil?
          hash['customer'] = @customer.to_h unless @customer.nil?
          hash['references'] = @references.to_h unless @references.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'additionalInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['additionalInput']] unless hash['additionalInput'].is_a? Hash
            @additional_input = Ingenico::Connect::SDK::Domain::Definitions::AdditionalOrderInputAirlineData.new_from_hash(hash['additionalInput'])
          end
          if hash.has_key? 'customer'
            raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
            @customer = Ingenico::Connect::SDK::Domain::Payment::CustomerApprovePayment.new_from_hash(hash['customer'])
          end
          if hash.has_key? 'references'
            raise TypeError, "value '%s' is not a Hash" % [hash['references']] unless hash['references'].is_a? Hash
            @references = Ingenico::Connect::SDK::Domain::Payment::OrderReferencesApprovePayment.new_from_hash(hash['references'])
          end
        end
      end
    end
  end
end
