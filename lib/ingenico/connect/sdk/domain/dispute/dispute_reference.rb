#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Dispute

      class DisputeReference < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :merchant_order_id

        # String
        attr_accessor :merchant_reference

        # String
        attr_accessor :payment_reference

        # String
        attr_accessor :provider_id

        # String
        attr_accessor :provider_reference

        def to_h
          hash = super
          add_to_hash(hash, 'merchantOrderId', @merchant_order_id)
          add_to_hash(hash, 'merchantReference', @merchant_reference)
          add_to_hash(hash, 'paymentReference', @payment_reference)
          add_to_hash(hash, 'providerId', @provider_id)
          add_to_hash(hash, 'providerReference', @provider_reference)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('merchantOrderId')
            @merchant_order_id = hash['merchantOrderId']
          end
          if hash.has_key?('merchantReference')
            @merchant_reference = hash['merchantReference']
          end
          if hash.has_key?('paymentReference')
            @payment_reference = hash['paymentReference']
          end
          if hash.has_key?('providerId')
            @provider_id = hash['providerId']
          end
          if hash.has_key?('providerReference')
            @provider_reference = hash['providerReference']
          end
        end
      end
    end
  end
end
