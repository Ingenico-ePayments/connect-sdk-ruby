#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class CustomerAccountAuthentication < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :method

        # String
        attr_accessor :utc_timestamp

        def to_h
          hash = super
          add_to_hash(hash, 'method', @method)
          add_to_hash(hash, 'utcTimestamp', @utc_timestamp)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('method')
            @method = hash['method']
          end
          if hash.has_key?('utcTimestamp')
            @utc_timestamp = hash['utcTimestamp']
          end
        end
      end
    end
  end
end
