#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/mandates/create_mandate_base'
require 'ingenico/connect/sdk/domain/payment/abstract_sepa_direct_debit_payment_product771_specific_input'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] existing_unique_mandate_reference
          # @attr [Ingenico::Connect::SDK::Domain::Mandates::CreateMandateBase] mandate
          class SepaDirectDebitPaymentProduct771SpecificInputBase < Ingenico::Connect::SDK::Domain::Payment::AbstractSepaDirectDebitPaymentProduct771SpecificInput

            attr_accessor :existing_unique_mandate_reference

            attr_accessor :mandate

            # @return (Hash)
            def to_h
              hash = super
              hash['existingUniqueMandateReference'] = @existing_unique_mandate_reference unless @existing_unique_mandate_reference.nil?
              hash['mandate'] = @mandate.to_h unless @mandate.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'existingUniqueMandateReference'
                @existing_unique_mandate_reference = hash['existingUniqueMandateReference']
              end
              if hash.has_key? 'mandate'
                raise TypeError, "value '%s' is not a Hash" % [hash['mandate']] unless hash['mandate'].is_a? Hash
                @mandate = Ingenico::Connect::SDK::Domain::Mandates::CreateMandateBase.new_from_hash(hash['mandate'])
              end
            end
          end
        end
      end
    end
  end
end
