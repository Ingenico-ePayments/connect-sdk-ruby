#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # @attr [String] regular_expression
      class RegularExpressionValidator < Ingenico::Connect::SDK::DataObject

        attr_accessor :regular_expression

        # @return (Hash)
        def to_h
          hash = super
          hash['regularExpression'] = @regular_expression unless @regular_expression.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'regularExpression'
            @regular_expression = hash['regularExpression']
          end
        end
      end
    end
  end
end
