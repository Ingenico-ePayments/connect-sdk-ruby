#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [String] key
      # @attr [String] value
      class KeyValuePair < Ingenico::Connect::SDK::DataObject

        attr_accessor :key

        attr_accessor :value

        # @return (Hash)
        def to_h
          hash = super
          hash['key'] = @key unless @key.nil?
          hash['value'] = @value unless @value.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'key'
            @key = hash['key']
          end
          if hash.has_key? 'value'
            @value = hash['value']
          end
        end
      end
    end
  end
end
