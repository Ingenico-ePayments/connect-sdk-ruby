#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/mandates/create_mandate_base'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class SepaDirectDebitPaymentProduct771SpecificInput < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Mandates::CreateMandateBase}
        attr_accessor :mandate

        # String
        attr_accessor :mandate_reference

        def to_h
          hash = super
          add_to_hash(hash, 'mandate', @mandate)
          add_to_hash(hash, 'mandateReference', @mandate_reference)
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
          if hash.has_key?('mandateReference')
            @mandate_reference = hash['mandateReference']
          end
        end
      end
    end
  end
end
