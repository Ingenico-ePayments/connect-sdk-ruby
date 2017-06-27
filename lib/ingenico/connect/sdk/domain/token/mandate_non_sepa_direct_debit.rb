#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/token/token_non_sepa_direct_debit_payment_product705_specific_data'

module Ingenico::Connect::SDK
  module Domain
    module Token

      class MandateNonSepaDirectDebit < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Token::TokenNonSepaDirectDebitPaymentProduct705SpecificData}
        attr_accessor :payment_product705_specific_data

        def to_h
          hash = super
          add_to_hash(hash, 'paymentProduct705SpecificData', @payment_product705_specific_data)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('paymentProduct705SpecificData')
            if !(hash['paymentProduct705SpecificData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct705SpecificData']]
            end
            @payment_product705_specific_data = Ingenico::Connect::SDK::Domain::Token::TokenNonSepaDirectDebitPaymentProduct705SpecificData.new_from_hash(hash['paymentProduct705SpecificData'])
          end
        end
      end
    end
  end
end
