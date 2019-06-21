#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [String] returnmac
      # @attr [String] redirect_url
      class RedirectDataBase < Ingenico::Connect::SDK::DataObject

        attr_accessor :returnmac

        attr_accessor :redirect_url

        # @return (Hash)
        def to_h
          hash = super
          hash['RETURNMAC'] = @returnmac unless @returnmac.nil?
          hash['redirectURL'] = @redirect_url unless @redirect_url.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'RETURNMAC'
            @returnmac = hash['RETURNMAC']
          end
          if hash.has_key? 'redirectURL'
            @redirect_url = hash['redirectURL']
          end
        end
      end
    end
  end
end
