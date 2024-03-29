#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Dispute
          # @attr [String] merchant_order_id
          # @attr [String] merchant_reference
          # @attr [String] payment_reference
          # @attr [String] provider_id
          # @attr [String] provider_reference
          class DisputeReference < Ingenico::Connect::SDK::DataObject

            attr_accessor :merchant_order_id

            attr_accessor :merchant_reference

            attr_accessor :payment_reference

            attr_accessor :provider_id

            attr_accessor :provider_reference

            # @return (Hash)
            def to_h
              hash = super
              hash['merchantOrderId'] = @merchant_order_id unless @merchant_order_id.nil?
              hash['merchantReference'] = @merchant_reference unless @merchant_reference.nil?
              hash['paymentReference'] = @payment_reference unless @payment_reference.nil?
              hash['providerId'] = @provider_id unless @provider_id.nil?
              hash['providerReference'] = @provider_reference unless @provider_reference.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'merchantOrderId'
                @merchant_order_id = hash['merchantOrderId']
              end
              if hash.has_key? 'merchantReference'
                @merchant_reference = hash['merchantReference']
              end
              if hash.has_key? 'paymentReference'
                @payment_reference = hash['paymentReference']
              end
              if hash.has_key? 'providerId'
                @provider_id = hash['providerId']
              end
              if hash.has_key? 'providerReference'
                @provider_reference = hash['providerReference']
              end
            end
          end
        end
      end
    end
  end
end
