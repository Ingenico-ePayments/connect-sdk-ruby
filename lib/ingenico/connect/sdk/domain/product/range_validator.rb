#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Product
          # @attr [Integer] max_value
          # @attr [Integer] min_value
          class RangeValidator < Ingenico::Connect::SDK::DataObject

            attr_accessor :max_value

            attr_accessor :min_value

            # @return (Hash)
            def to_h
              hash = super
              hash['maxValue'] = @max_value unless @max_value.nil?
              hash['minValue'] = @min_value unless @min_value.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'maxValue'
                @max_value = hash['maxValue']
              end
              if hash.has_key? 'minValue'
                @min_value = hash['minValue']
              end
            end
          end
        end
      end
    end
  end
end
