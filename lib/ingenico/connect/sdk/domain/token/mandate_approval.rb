#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Token

      # @attr [String] mandate_signature_date
      # @attr [String] mandate_signature_place
      # @attr [true/false] mandate_signed
      class MandateApproval < Ingenico::Connect::SDK::DataObject

        attr_accessor :mandate_signature_date

        attr_accessor :mandate_signature_place

        attr_accessor :mandate_signed

        # @return (Hash)
        def to_h
          hash = super
          hash['mandateSignatureDate'] = @mandate_signature_date unless @mandate_signature_date.nil?
          hash['mandateSignaturePlace'] = @mandate_signature_place unless @mandate_signature_place.nil?
          hash['mandateSigned'] = @mandate_signed unless @mandate_signed.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'mandateSignatureDate'
            @mandate_signature_date = hash['mandateSignatureDate']
          end
          if hash.has_key? 'mandateSignaturePlace'
            @mandate_signature_place = hash['mandateSignaturePlace']
          end
          if hash.has_key? 'mandateSigned'
            @mandate_signed = hash['mandateSigned']
          end
        end
      end
    end
  end
end
