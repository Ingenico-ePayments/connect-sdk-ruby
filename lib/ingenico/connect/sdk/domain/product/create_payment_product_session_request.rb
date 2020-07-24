#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/mobile_payment_product_session302_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # @attr [Ingenico::Connect::SDK::Domain::Product::MobilePaymentProductSession302SpecificInput] payment_product_session302_specific_input
      class CreatePaymentProductSessionRequest < Ingenico::Connect::SDK::DataObject

        attr_accessor :payment_product_session302_specific_input

        # @return (Hash)
        def to_h
          hash = super
          hash['paymentProductSession302SpecificInput'] = @payment_product_session302_specific_input.to_h unless @payment_product_session302_specific_input.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'paymentProductSession302SpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProductSession302SpecificInput']] unless hash['paymentProductSession302SpecificInput'].is_a? Hash
            @payment_product_session302_specific_input = Ingenico::Connect::SDK::Domain::Product::MobilePaymentProductSession302SpecificInput.new_from_hash(hash['paymentProductSession302SpecificInput'])
          end
        end
      end
    end
  end
end
