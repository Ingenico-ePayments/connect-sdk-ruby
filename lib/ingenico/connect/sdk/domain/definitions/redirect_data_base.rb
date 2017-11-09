#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class RedirectDataBase < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :returnmac

        # String
        attr_accessor :redirect_url

        def to_h
          hash = super
          add_to_hash(hash, 'RETURNMAC', @returnmac)
          add_to_hash(hash, 'redirectURL', @redirect_url)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('RETURNMAC')
            @returnmac = hash['RETURNMAC']
          end
          if hash.has_key?('redirectURL')
            @redirect_url = hash['redirectURL']
          end
        end
      end
    end
  end
end
