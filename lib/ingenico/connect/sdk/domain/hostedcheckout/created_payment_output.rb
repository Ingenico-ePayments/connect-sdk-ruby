#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/hostedcheckout/displayed_data'
require 'ingenico/connect/sdk/domain/payment/payment'
require 'ingenico/connect/sdk/domain/payment/payment_creation_references'

module Ingenico::Connect::SDK
  module Domain
    module Hostedcheckout

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_CreatedPaymentOutput CreatedPaymentOutput}
      class CreatedPaymentOutput < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Hostedcheckout::DisplayedData}
        attr_accessor :displayed_data

        # {Ingenico::Connect::SDK::Domain::Payment::Payment}
        attr_accessor :payment

        # {Ingenico::Connect::SDK::Domain::Payment::PaymentCreationReferences}
        attr_accessor :payment_creation_references

        # String
        attr_accessor :payment_status_category

        # String
        attr_accessor :tokens

        def to_h
          hash = super
          add_to_hash(hash, 'displayedData', @displayed_data)
          add_to_hash(hash, 'payment', @payment)
          add_to_hash(hash, 'paymentCreationReferences', @payment_creation_references)
          add_to_hash(hash, 'paymentStatusCategory', @payment_status_category)
          add_to_hash(hash, 'tokens', @tokens)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('displayedData')
            if !(hash['displayedData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['displayedData']]
            end
            @displayed_data = Ingenico::Connect::SDK::Domain::Hostedcheckout::DisplayedData.new_from_hash(hash['displayedData'])
          end
          if hash.has_key?('payment')
            if !(hash['payment'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['payment']]
            end
            @payment = Ingenico::Connect::SDK::Domain::Payment::Payment.new_from_hash(hash['payment'])
          end
          if hash.has_key?('paymentCreationReferences')
            if !(hash['paymentCreationReferences'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentCreationReferences']]
            end
            @payment_creation_references = Ingenico::Connect::SDK::Domain::Payment::PaymentCreationReferences.new_from_hash(hash['paymentCreationReferences'])
          end
          if hash.has_key?('paymentStatusCategory')
            @payment_status_category = hash['paymentStatusCategory']
          end
          if hash.has_key?('tokens')
            @tokens = hash['tokens']
          end
        end
      end
    end
  end
end
