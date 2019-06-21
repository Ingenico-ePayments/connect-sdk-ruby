#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] return_url
      # @deprecated No replacement
      class CashPaymentProduct1503SpecificInput < Ingenico::Connect::SDK::DataObject

        #
        # @deprecated No replacement, since Boleto Bancario no longer needs a return URL
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
