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
          # @attr [String] return_url
          class CashPaymentProductWithRedirectSpecificInputBase < Ingenico::Connect::SDK::DataObject

            attr_accessor :return_url

            # @return (Hash)
            def to_h
              hash = super
              hash['returnUrl'] = @return_url unless @return_url.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'returnUrl'
                @return_url = hash['returnUrl']
              end
            end
          end
        end
      end
    end
  end
end
