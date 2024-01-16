#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/mobile_payment_product_session302_specific_output'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Product
          # @attr [Ingenico::Connect::SDK::Domain::Product::MobilePaymentProductSession302SpecificOutput] payment_product_session302_specific_output
          class CreatePaymentProductSessionResponse < Ingenico::Connect::SDK::DataObject

            attr_accessor :payment_product_session302_specific_output

            # @return (Hash)
            def to_h
              hash = super
              hash['paymentProductSession302SpecificOutput'] = @payment_product_session302_specific_output.to_h unless @payment_product_session302_specific_output.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'paymentProductSession302SpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProductSession302SpecificOutput']] unless hash['paymentProductSession302SpecificOutput'].is_a? Hash
                @payment_product_session302_specific_output = Ingenico::Connect::SDK::Domain::Product::MobilePaymentProductSession302SpecificOutput.new_from_hash(hash['paymentProductSession302SpecificOutput'])
              end
            end
          end
        end
      end
    end
  end
end
