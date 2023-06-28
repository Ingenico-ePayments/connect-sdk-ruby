#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/hostedcheckout/displayed_data'
require 'ingenico/connect/sdk/domain/payment/payment'
require 'ingenico/connect/sdk/domain/payment/payment_creation_references'

module Ingenico::Connect::SDK
  module Domain
    module Hostedcheckout

      # @attr [Ingenico::Connect::SDK::Domain::Hostedcheckout::DisplayedData] displayed_data
      # @attr [true/false] is_checked_remember_me
      # @attr [Ingenico::Connect::SDK::Domain::Payment::Payment] payment
      # @attr [Ingenico::Connect::SDK::Domain::Payment::PaymentCreationReferences] payment_creation_references
      # @attr [String] payment_status_category
      # @attr [true/false] tokenization_succeeded
      # @attr [String] tokens
      class CreatedPaymentOutput < Ingenico::Connect::SDK::DataObject

        attr_accessor :displayed_data

        attr_accessor :is_checked_remember_me

        attr_accessor :payment

        attr_accessor :payment_creation_references

        #
        # @deprecated Use Payment.statusOutput.statusCategory instead
        attr_accessor :payment_status_category

        attr_accessor :tokenization_succeeded

        attr_accessor :tokens

        # @return (Hash)
        def to_h
          hash = super
          hash['displayedData'] = @displayed_data.to_h unless @displayed_data.nil?
          hash['isCheckedRememberMe'] = @is_checked_remember_me unless @is_checked_remember_me.nil?
          hash['payment'] = @payment.to_h unless @payment.nil?
          hash['paymentCreationReferences'] = @payment_creation_references.to_h unless @payment_creation_references.nil?
          hash['paymentStatusCategory'] = @payment_status_category unless @payment_status_category.nil?
          hash['tokenizationSucceeded'] = @tokenization_succeeded unless @tokenization_succeeded.nil?
          hash['tokens'] = @tokens unless @tokens.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'displayedData'
            raise TypeError, "value '%s' is not a Hash" % [hash['displayedData']] unless hash['displayedData'].is_a? Hash
            @displayed_data = Ingenico::Connect::SDK::Domain::Hostedcheckout::DisplayedData.new_from_hash(hash['displayedData'])
          end
          if hash.has_key? 'isCheckedRememberMe'
            @is_checked_remember_me = hash['isCheckedRememberMe']
          end
          if hash.has_key? 'payment'
            raise TypeError, "value '%s' is not a Hash" % [hash['payment']] unless hash['payment'].is_a? Hash
            @payment = Ingenico::Connect::SDK::Domain::Payment::Payment.new_from_hash(hash['payment'])
          end
          if hash.has_key? 'paymentCreationReferences'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentCreationReferences']] unless hash['paymentCreationReferences'].is_a? Hash
            @payment_creation_references = Ingenico::Connect::SDK::Domain::Payment::PaymentCreationReferences.new_from_hash(hash['paymentCreationReferences'])
          end
          if hash.has_key? 'paymentStatusCategory'
            @payment_status_category = hash['paymentStatusCategory']
          end
          if hash.has_key? 'tokenizationSucceeded'
            @tokenization_succeeded = hash['tokenizationSucceeded']
          end
          if hash.has_key? 'tokens'
            @tokens = hash['tokens']
          end
        end
      end
    end
  end
end
