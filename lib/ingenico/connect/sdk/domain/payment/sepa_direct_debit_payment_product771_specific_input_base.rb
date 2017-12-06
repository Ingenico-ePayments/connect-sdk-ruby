#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/mandates/create_mandate_base'
require 'ingenico/connect/sdk/domain/payment/abstract_sepa_direct_debit_payment_product771_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class SepaDirectDebitPaymentProduct771SpecificInputBase < Ingenico::Connect::SDK::Domain::Payment::AbstractSepaDirectDebitPaymentProduct771SpecificInput

        # {Ingenico::Connect::SDK::Domain::Mandates::CreateMandateBase}
        attr_accessor :mandate

        def to_h
          hash = super
          add_to_hash(hash, 'mandate', @mandate)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('mandate')
            if !(hash['mandate'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['mandate']]
            end
            @mandate = Ingenico::Connect::SDK::Domain::Mandates::CreateMandateBase.new_from_hash(hash['mandate'])
          end
        end
      end
    end
  end
end
