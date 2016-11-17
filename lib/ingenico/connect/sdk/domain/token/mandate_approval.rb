#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Token

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_MandateApproval MandateApproval}
      class MandateApproval < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :mandate_signature_date

        # String
        attr_accessor :mandate_signature_place

        # true/false
        attr_accessor :mandate_signed

        def to_h
          hash = super
          add_to_hash(hash, 'mandateSignatureDate', @mandate_signature_date)
          add_to_hash(hash, 'mandateSignaturePlace', @mandate_signature_place)
          add_to_hash(hash, 'mandateSigned', @mandate_signed)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('mandateSignatureDate')
            @mandate_signature_date = hash['mandateSignatureDate']
          end
          if hash.has_key?('mandateSignaturePlace')
            @mandate_signature_place = hash['mandateSignaturePlace']
          end
          if hash.has_key?('mandateSigned')
            @mandate_signed = hash['mandateSigned']
          end
        end
      end
    end
  end
end
