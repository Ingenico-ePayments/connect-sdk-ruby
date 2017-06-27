#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      class FixedListValidator < Ingenico::Connect::SDK::DataObject

        # Array of String
        attr_accessor :allowed_values

        def to_h
          hash = super
          add_to_hash(hash, 'allowedValues', @allowed_values)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('allowedValues')
            if !(hash['allowedValues'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['allowedValues']]
            end
            @allowed_values = []
            hash['allowedValues'].each do |e|
              @allowed_values << e
            end
          end
        end
      end
    end
  end
end
