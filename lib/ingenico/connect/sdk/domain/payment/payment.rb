#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/definitions/abstract_order_status'
require 'ingenico/connect/sdk/domain/payment/hosted_checkout_specific_output'
require 'ingenico/connect/sdk/domain/payment/payment_output'
require 'ingenico/connect/sdk/domain/payment/payment_status_output'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [Ingenico::Connect::SDK::Domain::Payment::HostedCheckoutSpecificOutput] hosted_checkout_specific_output
          # @attr [Ingenico::Connect::SDK::Domain::Payment::PaymentOutput] payment_output
          # @attr [String] status
          # @attr [Ingenico::Connect::SDK::Domain::Payment::PaymentStatusOutput] status_output
          class Payment < Ingenico::Connect::SDK::Domain::Definitions::AbstractOrderStatus

            attr_accessor :hosted_checkout_specific_output

            attr_accessor :payment_output

            attr_accessor :status

            attr_accessor :status_output

            # @return (Hash)
            def to_h
              hash = super
              hash['hostedCheckoutSpecificOutput'] = @hosted_checkout_specific_output.to_h unless @hosted_checkout_specific_output.nil?
              hash['paymentOutput'] = @payment_output.to_h unless @payment_output.nil?
              hash['status'] = @status unless @status.nil?
              hash['statusOutput'] = @status_output.to_h unless @status_output.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'hostedCheckoutSpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['hostedCheckoutSpecificOutput']] unless hash['hostedCheckoutSpecificOutput'].is_a? Hash
                @hosted_checkout_specific_output = Ingenico::Connect::SDK::Domain::Payment::HostedCheckoutSpecificOutput.new_from_hash(hash['hostedCheckoutSpecificOutput'])
              end
              if hash.has_key? 'paymentOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentOutput']] unless hash['paymentOutput'].is_a? Hash
                @payment_output = Ingenico::Connect::SDK::Domain::Payment::PaymentOutput.new_from_hash(hash['paymentOutput'])
              end
              if hash.has_key? 'status'
                @status = hash['status']
              end
              if hash.has_key? 'statusOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['statusOutput']] unless hash['statusOutput'].is_a? Hash
                @status_output = Ingenico::Connect::SDK::Domain::Payment::PaymentStatusOutput.new_from_hash(hash['statusOutput'])
              end
            end
          end
        end
      end
    end
  end
end
