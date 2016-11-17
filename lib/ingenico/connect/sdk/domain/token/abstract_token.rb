#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Token

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_AbstractToken AbstractToken}
      class AbstractToken < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :alias

        def to_h
          hash = super
          add_to_hash(hash, 'alias', @alias)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('alias')
            @alias = hash['alias']
          end
        end
      end
    end
  end
end
