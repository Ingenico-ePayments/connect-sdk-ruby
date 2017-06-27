#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class FraudFieldsShippingDetails < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :method_details

        # Integer
        attr_accessor :method_speed

        # Integer
        attr_accessor :method_type

        def to_h
          hash = super
          add_to_hash(hash, 'methodDetails', @method_details)
          add_to_hash(hash, 'methodSpeed', @method_speed)
          add_to_hash(hash, 'methodType', @method_type)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('methodDetails')
            @method_details = hash['methodDetails']
          end
          if hash.has_key?('methodSpeed')
            @method_speed = hash['methodSpeed']
          end
          if hash.has_key?('methodType')
            @method_type = hash['methodType']
          end
        end
      end
    end
  end
end
