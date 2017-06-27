#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_order_status'
require 'ingenico/connect/sdk/domain/payment/payment_output'
require 'ingenico/connect/sdk/domain/payment/payment_status_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class Payment < Ingenico::Connect::SDK::Domain::Definitions::AbstractOrderStatus

        # {Ingenico::Connect::SDK::Domain::Payment::PaymentOutput}
        attr_accessor :payment_output

        # String
        attr_accessor :status

        # {Ingenico::Connect::SDK::Domain::Payment::PaymentStatusOutput}
        attr_accessor :status_output

        def to_h
          hash = super
          add_to_hash(hash, 'paymentOutput', @payment_output)
          add_to_hash(hash, 'status', @status)
          add_to_hash(hash, 'statusOutput', @status_output)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('paymentOutput')
            if !(hash['paymentOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentOutput']]
            end
            @payment_output = Ingenico::Connect::SDK::Domain::Payment::PaymentOutput.new_from_hash(hash['paymentOutput'])
          end
          if hash.has_key?('status')
            @status = hash['status']
          end
          if hash.has_key?('statusOutput')
            if !(hash['statusOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['statusOutput']]
            end
            @status_output = Ingenico::Connect::SDK::Domain::Payment::PaymentStatusOutput.new_from_hash(hash['statusOutput'])
          end
        end
      end
    end
  end
end
