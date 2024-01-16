#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_order_status'
require 'ingenico/connect/sdk/domain/definitions/order_status_output'
require 'ingenico/connect/sdk/domain/payment/order_output'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payout
          # @attr [Ingenico::Connect::SDK::Domain::Payment::OrderOutput] payout_output
          # @attr [String] status
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::OrderStatusOutput] status_output
          class PayoutResult < Ingenico::Connect::SDK::Domain::Definitions::AbstractOrderStatus

            attr_accessor :payout_output

            attr_accessor :status

            attr_accessor :status_output

            # @return (Hash)
            def to_h
              hash = super
              hash['payoutOutput'] = @payout_output.to_h unless @payout_output.nil?
              hash['status'] = @status unless @status.nil?
              hash['statusOutput'] = @status_output.to_h unless @status_output.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'payoutOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['payoutOutput']] unless hash['payoutOutput'].is_a? Hash
                @payout_output = Ingenico::Connect::SDK::Domain::Payment::OrderOutput.new_from_hash(hash['payoutOutput'])
              end
              if hash.has_key? 'status'
                @status = hash['status']
              end
              if hash.has_key? 'statusOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['statusOutput']] unless hash['statusOutput'].is_a? Hash
                @status_output = Ingenico::Connect::SDK::Domain::Definitions::OrderStatusOutput.new_from_hash(hash['statusOutput'])
              end
            end
          end
        end
      end
    end
  end
end
