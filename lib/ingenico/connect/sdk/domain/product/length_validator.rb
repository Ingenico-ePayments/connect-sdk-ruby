#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      class LengthValidator < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :max_length

        # Integer
        attr_accessor :min_length

        def to_h
          hash = super
          add_to_hash(hash, 'maxLength', @max_length)
          add_to_hash(hash, 'minLength', @min_length)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('maxLength')
            @max_length = hash['maxLength']
          end
          if hash.has_key?('minLength')
            @min_length = hash['minLength']
          end
        end
      end
    end
  end
end
