#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] display_name
      # @attr [String] integration_type
      # @attr [String] virtual_payment_address
      class RedirectPaymentProduct4101SpecificInput < Ingenico::Connect::SDK::DataObject

        attr_accessor :display_name

        attr_accessor :integration_type

        attr_accessor :virtual_payment_address

        # @return (Hash)
        def to_h
          hash = super
          hash['displayName'] = @display_name unless @display_name.nil?
          hash['integrationType'] = @integration_type unless @integration_type.nil?
          hash['virtualPaymentAddress'] = @virtual_payment_address unless @virtual_payment_address.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'displayName'
            @display_name = hash['displayName']
          end
          if hash.has_key? 'integrationType'
            @integration_type = hash['integrationType']
          end
          if hash.has_key? 'virtualPaymentAddress'
            @virtual_payment_address = hash['virtualPaymentAddress']
          end
        end
      end
    end
  end
end
