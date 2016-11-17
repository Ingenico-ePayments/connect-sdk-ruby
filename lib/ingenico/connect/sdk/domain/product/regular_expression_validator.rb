#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_RegularExpressionValidator RegularExpressionValidator}
      class RegularExpressionValidator < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :regular_expression

        def to_h
          hash = super
          add_to_hash(hash, 'regularExpression', @regular_expression)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('regularExpression')
            @regular_expression = hash['regularExpression']
          end
        end
      end
    end
  end
end
