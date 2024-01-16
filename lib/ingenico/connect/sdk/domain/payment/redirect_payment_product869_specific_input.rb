#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] issuer_id
          # @attr [String] resident_id_name
          # @attr [String] resident_id_number
          class RedirectPaymentProduct869SpecificInput < Ingenico::Connect::SDK::DataObject

            attr_accessor :issuer_id

            attr_accessor :resident_id_name

            attr_accessor :resident_id_number

            # @return (Hash)
            def to_h
              hash = super
              hash['issuerId'] = @issuer_id unless @issuer_id.nil?
              hash['residentIdName'] = @resident_id_name unless @resident_id_name.nil?
              hash['residentIdNumber'] = @resident_id_number unless @resident_id_number.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'issuerId'
                @issuer_id = hash['issuerId']
              end
              if hash.has_key? 'residentIdName'
                @resident_id_name = hash['residentIdName']
              end
              if hash.has_key? 'residentIdNumber'
                @resident_id_number = hash['residentIdNumber']
              end
            end
          end
        end
      end
    end
  end
end
