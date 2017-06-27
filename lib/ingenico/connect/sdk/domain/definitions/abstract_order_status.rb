#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class AbstractOrderStatus < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :id

        def to_h
          hash = super
          add_to_hash(hash, 'id', @id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('id')
            @id = hash['id']
          end
        end
      end
    end
  end
end
