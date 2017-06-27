#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/merchant_action'
require 'ingenico/connect/sdk/domain/payment/payment'
require 'ingenico/connect/sdk/domain/payment/payment_creation_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class CreatePaymentResult < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Payment::PaymentCreationOutput}
        attr_accessor :creation_output

        # {Ingenico::Connect::SDK::Domain::Payment::MerchantAction}
        attr_accessor :merchant_action

        # {Ingenico::Connect::SDK::Domain::Payment::Payment}
        attr_accessor :payment

        def to_h
          hash = super
          add_to_hash(hash, 'creationOutput', @creation_output)
          add_to_hash(hash, 'merchantAction', @merchant_action)
          add_to_hash(hash, 'payment', @payment)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('creationOutput')
            if !(hash['creationOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['creationOutput']]
            end
            @creation_output = Ingenico::Connect::SDK::Domain::Payment::PaymentCreationOutput.new_from_hash(hash['creationOutput'])
          end
          if hash.has_key?('merchantAction')
            if !(hash['merchantAction'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['merchantAction']]
            end
            @merchant_action = Ingenico::Connect::SDK::Domain::Payment::MerchantAction.new_from_hash(hash['merchantAction'])
          end
          if hash.has_key?('payment')
            if !(hash['payment'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['payment']]
            end
            @payment = Ingenico::Connect::SDK::Domain::Payment::Payment.new_from_hash(hash['payment'])
          end
        end
      end
    end
  end
end
