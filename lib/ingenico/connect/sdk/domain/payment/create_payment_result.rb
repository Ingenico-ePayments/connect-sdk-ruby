#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/merchant_action'
require 'ingenico/connect/sdk/domain/payment/payment'
require 'ingenico/connect/sdk/domain/payment/payment_creation_output'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [Ingenico::Connect::SDK::Domain::Payment::PaymentCreationOutput] creation_output
          # @attr [Ingenico::Connect::SDK::Domain::Payment::MerchantAction] merchant_action
          # @attr [Ingenico::Connect::SDK::Domain::Payment::Payment] payment
          class CreatePaymentResult < Ingenico::Connect::SDK::DataObject

            attr_accessor :creation_output

            attr_accessor :merchant_action

            attr_accessor :payment

            # @return (Hash)
            def to_h
              hash = super
              hash['creationOutput'] = @creation_output.to_h unless @creation_output.nil?
              hash['merchantAction'] = @merchant_action.to_h unless @merchant_action.nil?
              hash['payment'] = @payment.to_h unless @payment.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'creationOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['creationOutput']] unless hash['creationOutput'].is_a? Hash
                @creation_output = Ingenico::Connect::SDK::Domain::Payment::PaymentCreationOutput.new_from_hash(hash['creationOutput'])
              end
              if hash.has_key? 'merchantAction'
                raise TypeError, "value '%s' is not a Hash" % [hash['merchantAction']] unless hash['merchantAction'].is_a? Hash
                @merchant_action = Ingenico::Connect::SDK::Domain::Payment::MerchantAction.new_from_hash(hash['merchantAction'])
              end
              if hash.has_key? 'payment'
                raise TypeError, "value '%s' is not a Hash" % [hash['payment']] unless hash['payment'].is_a? Hash
                @payment = Ingenico::Connect::SDK::Domain::Payment::Payment.new_from_hash(hash['payment'])
              end
            end
          end
        end
      end
    end
  end
end
