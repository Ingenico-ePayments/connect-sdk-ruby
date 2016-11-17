#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/payment/abstract_payment_method_specific_output'
require 'ingenico/connect/sdk/domain/payment/payment_product836_specific_output'
require 'ingenico/connect/sdk/domain/payment/payment_product840_specific_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_RedirectPaymentMethodSpecificOutput RedirectPaymentMethodSpecificOutput}
      class RedirectPaymentMethodSpecificOutput < Ingenico::Connect::SDK::Domain::Payment::AbstractPaymentMethodSpecificOutput

        # {Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban}
        attr_accessor :bank_account_iban

        # {Ingenico::Connect::SDK::Domain::Payment::PaymentProduct836SpecificOutput}
        attr_accessor :payment_product836_specific_output

        # {Ingenico::Connect::SDK::Domain::Payment::PaymentProduct840SpecificOutput}
        attr_accessor :payment_product840_specific_output

        def to_h
          hash = super
          add_to_hash(hash, 'bankAccountIban', @bank_account_iban)
          add_to_hash(hash, 'paymentProduct836SpecificOutput', @payment_product836_specific_output)
          add_to_hash(hash, 'paymentProduct840SpecificOutput', @payment_product840_specific_output)
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
        end
      end
    end
  end
end
