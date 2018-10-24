#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      class PaymentProduct863SpecificData < Ingenico::Connect::SDK::DataObject

        # Array of String
        attr_accessor :integration_types

        def to_h
          hash = super
          add_to_hash(hash, 'integrationTypes', @integration_types)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('integrationTypes')
            if !(hash['integrationTypes'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['integrationTypes']]
            end
            @integration_types = []
            hash['integrationTypes'].each do |e|
              @integration_types << e
            end
          end
        end
      end
    end
  end
end
