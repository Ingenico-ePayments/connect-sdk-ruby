#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/additional_order_input_airline_data'
require 'ingenico/connect/sdk/domain/payment/order_references_approve_payment'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class OrderApprovePayment < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::AdditionalOrderInputAirlineData}
        attr_accessor :additional_input

        # {Ingenico::Connect::SDK::Domain::Payment::OrderReferencesApprovePayment}
        attr_accessor :references

        def to_h
          hash = super
          add_to_hash(hash, 'additionalInput', @additional_input)
          add_to_hash(hash, 'references', @references)
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
          if hash.has_key?('references')
            if !(hash['references'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['references']]
            end
            @references = Ingenico::Connect::SDK::Domain::Payment::OrderReferencesApprovePayment.new_from_hash(hash['references'])
          end
        end
      end
    end
  end
end
