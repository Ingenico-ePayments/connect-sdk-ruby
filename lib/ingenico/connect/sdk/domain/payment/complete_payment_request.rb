#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/complete_payment_card_payment_method_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class CompletePaymentRequest < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Payment::CompletePaymentCardPaymentMethodSpecificInput}
        attr_accessor :card_payment_method_specific_input

        def to_h
          hash = super
          add_to_hash(hash, 'cardPaymentMethodSpecificInput', @card_payment_method_specific_input)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('cardPaymentMethodSpecificInput')
            if !(hash['cardPaymentMethodSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['cardPaymentMethodSpecificInput']]
            end
            @card_payment_method_specific_input = Ingenico::Connect::SDK::Domain::Payment::CompletePaymentCardPaymentMethodSpecificInput.new_from_hash(hash['cardPaymentMethodSpecificInput'])
          end
        end
      end
    end
  end
end
