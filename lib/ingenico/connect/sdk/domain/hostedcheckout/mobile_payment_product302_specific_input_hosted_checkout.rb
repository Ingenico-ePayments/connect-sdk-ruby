#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Hostedcheckout
          # @attr [String] business_name
          class MobilePaymentProduct302SpecificInputHostedCheckout < Ingenico::Connect::SDK::DataObject

            attr_accessor :business_name

            # @return (Hash)
            def to_h
              hash = super
              hash['businessName'] = @business_name unless @business_name.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'businessName'
                @business_name = hash['businessName']
              end
            end
          end
        end
      end
    end
  end
end
