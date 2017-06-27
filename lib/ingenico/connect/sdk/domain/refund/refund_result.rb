#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_order_status'
require 'ingenico/connect/sdk/domain/definitions/order_status_output'
require 'ingenico/connect/sdk/domain/payment/refund_output'

module Ingenico::Connect::SDK
  module Domain
    module Refund

      class RefundResult < Ingenico::Connect::SDK::Domain::Definitions::AbstractOrderStatus

        # {Ingenico::Connect::SDK::Domain::Payment::RefundOutput}
        attr_accessor :refund_output

        # String
        attr_accessor :status

        # {Ingenico::Connect::SDK::Domain::Definitions::OrderStatusOutput}
        attr_accessor :status_output

        def to_h
          hash = super
          add_to_hash(hash, 'refundOutput', @refund_output)
          add_to_hash(hash, 'status', @status)
          add_to_hash(hash, 'statusOutput', @status_output)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('refundOutput')
            if !(hash['refundOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['refundOutput']]
            end
            @refund_output = Ingenico::Connect::SDK::Domain::Payment::RefundOutput.new_from_hash(hash['refundOutput'])
          end
          if hash.has_key?('status')
            @status = hash['status']
          end
          if hash.has_key?('statusOutput')
            if !(hash['statusOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['statusOutput']]
            end
            @status_output = Ingenico::Connect::SDK::Domain::Definitions::OrderStatusOutput.new_from_hash(hash['statusOutput'])
          end
        end
      end
    end
  end
end
