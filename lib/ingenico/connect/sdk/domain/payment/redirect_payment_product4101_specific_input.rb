#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] integration_type
      # @attr [String] merchant_name
      # @attr [String] transaction_note
      # @attr [String] vpa
      class RedirectPaymentProduct4101SpecificInput < Ingenico::Connect::SDK::DataObject

        attr_accessor :integration_type

        attr_accessor :merchant_name

        attr_accessor :transaction_note

        attr_accessor :vpa

        # @return (Hash)
        def to_h
          hash = super
          hash['integrationType'] = @integration_type unless @integration_type.nil?
          hash['merchantName'] = @merchant_name unless @merchant_name.nil?
          hash['transactionNote'] = @transaction_note unless @transaction_note.nil?
          hash['vpa'] = @vpa unless @vpa.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'integrationType'
            @integration_type = hash['integrationType']
          end
          if hash.has_key? 'merchantName'
            @merchant_name = hash['merchantName']
          end
          if hash.has_key? 'transactionNote'
            @transaction_note = hash['transactionNote']
          end
          if hash.has_key? 'vpa'
            @vpa = hash['vpa']
          end
        end
      end
    end
  end
end
