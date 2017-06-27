#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Token

      class CreateTokenResponse < Ingenico::Connect::SDK::DataObject

        # true/false
        attr_accessor :is_new_token

        # String
        attr_accessor :token

        def to_h
          hash = super
          add_to_hash(hash, 'isNewToken', @is_new_token)
          add_to_hash(hash, 'token', @token)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('isNewToken')
            @is_new_token = hash['isNewToken']
          end
          if hash.has_key?('token')
            @token = hash['token']
          end
        end
      end
    end
  end
end
