#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/definitions/fraud_results'
require 'ingenico/connect/sdk/domain/payment/abstract_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/payment_product3201_specific_output'
require 'ingenico/connect/sdk/domain/payment/payment_product836_specific_output'
require 'ingenico/connect/sdk/domain/payment/payment_product840_specific_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class RedirectPaymentMethodSpecificOutput < Ingenico::Connect::SDK::Domain::Payment::AbstractPaymentMethodSpecificOutput

        # {Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban}
        attr_accessor :bank_account_iban

        # {Ingenico::Connect::SDK::Domain::Definitions::FraudResults}
        attr_accessor :fraud_results

        # {Ingenico::Connect::SDK::Domain::Payment::PaymentProduct3201SpecificOutput}
        attr_accessor :payment_product3201_specific_output

        # {Ingenico::Connect::SDK::Domain::Payment::PaymentProduct836SpecificOutput}
        attr_accessor :payment_product836_specific_output

        # {Ingenico::Connect::SDK::Domain::Payment::PaymentProduct840SpecificOutput}
        attr_accessor :payment_product840_specific_output

        # String
        attr_accessor :token

        def to_h
          hash = super
          add_to_hash(hash, 'bankAccountIban', @bank_account_iban)
          add_to_hash(hash, 'fraudResults', @fraud_results)
          add_to_hash(hash, 'paymentProduct3201SpecificOutput', @payment_product3201_specific_output)
          add_to_hash(hash, 'paymentProduct836SpecificOutput', @payment_product836_specific_output)
          add_to_hash(hash, 'paymentProduct840SpecificOutput', @payment_product840_specific_output)
          add_to_hash(hash, 'token', @token)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('bankAccountIban')
            if !(hash['bankAccountIban'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']]
            end
            @bank_account_iban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban.new_from_hash(hash['bankAccountIban'])
          end
          if hash.has_key?('fraudResults')
            if !(hash['fraudResults'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['fraudResults']]
            end
            @fraud_results = Ingenico::Connect::SDK::Domain::Definitions::FraudResults.new_from_hash(hash['fraudResults'])
          end
          if hash.has_key?('paymentProduct3201SpecificOutput')
            if !(hash['paymentProduct3201SpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct3201SpecificOutput']]
            end
            @payment_product3201_specific_output = Ingenico::Connect::SDK::Domain::Payment::PaymentProduct3201SpecificOutput.new_from_hash(hash['paymentProduct3201SpecificOutput'])
          end
          if hash.has_key?('paymentProduct836SpecificOutput')
            if !(hash['paymentProduct836SpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct836SpecificOutput']]
            end
            @payment_product836_specific_output = Ingenico::Connect::SDK::Domain::Payment::PaymentProduct836SpecificOutput.new_from_hash(hash['paymentProduct836SpecificOutput'])
          end
          if hash.has_key?('paymentProduct840SpecificOutput')
            if !(hash['paymentProduct840SpecificOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct840SpecificOutput']]
            end
            @payment_product840_specific_output = Ingenico::Connect::SDK::Domain::Payment::PaymentProduct840SpecificOutput.new_from_hash(hash['paymentProduct840SpecificOutput'])
          end
          if hash.has_key?('token')
            @token = hash['token']
          end
        end
      end
    end
  end
end
