#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] cryptogram
      # @attr [String] eci
      # @attr [String] network_token
      # @attr [String] token_expiry_date
      class SchemeTokenData < Ingenico::Connect::SDK::DataObject

        attr_accessor :cryptogram

        attr_accessor :eci

        attr_accessor :network_token

        attr_accessor :token_expiry_date

        # @return (Hash)
        def to_h
          hash = super
          hash['cryptogram'] = @cryptogram unless @cryptogram.nil?
          hash['eci'] = @eci unless @eci.nil?
          hash['networkToken'] = @network_token unless @network_token.nil?
          hash['tokenExpiryDate'] = @token_expiry_date unless @token_expiry_date.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'cryptogram'
            @cryptogram = hash['cryptogram']
          end
          if hash.has_key? 'eci'
            @eci = hash['eci']
          end
          if hash.has_key? 'networkToken'
            @network_token = hash['networkToken']
          end
          if hash.has_key? 'tokenExpiryDate'
            @token_expiry_date = hash['tokenExpiryDate']
          end
        end
      end
    end
  end
end
