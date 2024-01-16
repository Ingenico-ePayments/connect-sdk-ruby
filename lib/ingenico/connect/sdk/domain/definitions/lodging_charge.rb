#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Definitions
          # @attr [Integer] charge_amount
          # @attr [String] charge_amount_currency_code
          # @attr [String] charge_type
          class LodgingCharge < Ingenico::Connect::SDK::DataObject

            attr_accessor :charge_amount

            attr_accessor :charge_amount_currency_code

            attr_accessor :charge_type

            # @return (Hash)
            def to_h
              hash = super
              hash['chargeAmount'] = @charge_amount unless @charge_amount.nil?
              hash['chargeAmountCurrencyCode'] = @charge_amount_currency_code unless @charge_amount_currency_code.nil?
              hash['chargeType'] = @charge_type unless @charge_type.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'chargeAmount'
                @charge_amount = hash['chargeAmount']
              end
              if hash.has_key? 'chargeAmountCurrencyCode'
                @charge_amount_currency_code = hash['chargeAmountCurrencyCode']
              end
              if hash.has_key? 'chargeType'
                @charge_type = hash['chargeType']
              end
            end
          end
        end
      end
    end
  end
end
