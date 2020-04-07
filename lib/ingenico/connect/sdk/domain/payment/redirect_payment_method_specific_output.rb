#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/definitions/fraud_results'
require 'ingenico/connect/sdk/domain/payment/abstract_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/payment_product3201_specific_output'
require 'ingenico/connect/sdk/domain/payment/payment_product806_specific_output'
require 'ingenico/connect/sdk/domain/payment/payment_product836_specific_output'
require 'ingenico/connect/sdk/domain/payment/payment_product840_specific_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban] bank_account_iban
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::FraudResults] fraud_results
      # @attr [Ingenico::Connect::SDK::Domain::Payment::PaymentProduct3201SpecificOutput] payment_product3201_specific_output
      # @attr [Ingenico::Connect::SDK::Domain::Payment::PaymentProduct806SpecificOutput] payment_product806_specific_output
      # @attr [Ingenico::Connect::SDK::Domain::Payment::PaymentProduct836SpecificOutput] payment_product836_specific_output
      # @attr [Ingenico::Connect::SDK::Domain::Payment::PaymentProduct840SpecificOutput] payment_product840_specific_output
      # @attr [String] token
      class RedirectPaymentMethodSpecificOutput < Ingenico::Connect::SDK::Domain::Payment::AbstractPaymentMethodSpecificOutput

        attr_accessor :bank_account_iban

        attr_accessor :fraud_results

        attr_accessor :payment_product3201_specific_output

        attr_accessor :payment_product806_specific_output

        attr_accessor :payment_product836_specific_output

        attr_accessor :payment_product840_specific_output

        attr_accessor :token

        # @return (Hash)
        def to_h
          hash = super
          hash['bankAccountIban'] = @bank_account_iban.to_h unless @bank_account_iban.nil?
          hash['fraudResults'] = @fraud_results.to_h unless @fraud_results.nil?
          hash['paymentProduct3201SpecificOutput'] = @payment_product3201_specific_output.to_h unless @payment_product3201_specific_output.nil?
          hash['paymentProduct806SpecificOutput'] = @payment_product806_specific_output.to_h unless @payment_product806_specific_output.nil?
          hash['paymentProduct836SpecificOutput'] = @payment_product836_specific_output.to_h unless @payment_product836_specific_output.nil?
          hash['paymentProduct840SpecificOutput'] = @payment_product840_specific_output.to_h unless @payment_product840_specific_output.nil?
          hash['token'] = @token unless @token.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'bankAccountIban'
            raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']] unless hash['bankAccountIban'].is_a? Hash
            @bank_account_iban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban.new_from_hash(hash['bankAccountIban'])
          end
          if hash.has_key? 'fraudResults'
            raise TypeError, "value '%s' is not a Hash" % [hash['fraudResults']] unless hash['fraudResults'].is_a? Hash
            @fraud_results = Ingenico::Connect::SDK::Domain::Definitions::FraudResults.new_from_hash(hash['fraudResults'])
          end
          if hash.has_key? 'paymentProduct3201SpecificOutput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct3201SpecificOutput']] unless hash['paymentProduct3201SpecificOutput'].is_a? Hash
            @payment_product3201_specific_output = Ingenico::Connect::SDK::Domain::Payment::PaymentProduct3201SpecificOutput.new_from_hash(hash['paymentProduct3201SpecificOutput'])
          end
          if hash.has_key? 'paymentProduct806SpecificOutput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct806SpecificOutput']] unless hash['paymentProduct806SpecificOutput'].is_a? Hash
            @payment_product806_specific_output = Ingenico::Connect::SDK::Domain::Payment::PaymentProduct806SpecificOutput.new_from_hash(hash['paymentProduct806SpecificOutput'])
          end
          if hash.has_key? 'paymentProduct836SpecificOutput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct836SpecificOutput']] unless hash['paymentProduct836SpecificOutput'].is_a? Hash
            @payment_product836_specific_output = Ingenico::Connect::SDK::Domain::Payment::PaymentProduct836SpecificOutput.new_from_hash(hash['paymentProduct836SpecificOutput'])
          end
          if hash.has_key? 'paymentProduct840SpecificOutput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct840SpecificOutput']] unless hash['paymentProduct840SpecificOutput'].is_a? Hash
            @payment_product840_specific_output = Ingenico::Connect::SDK::Domain::Payment::PaymentProduct840SpecificOutput.new_from_hash(hash['paymentProduct840SpecificOutput'])
          end
          if hash.has_key? 'token'
            @token = hash['token']
          end
        end
      end
    end
  end
end
