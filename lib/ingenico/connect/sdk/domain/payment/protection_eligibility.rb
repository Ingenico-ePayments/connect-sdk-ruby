#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class ProtectionEligibility < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :eligibility

        # String
        attr_accessor :type

        def to_h
          hash = super
          add_to_hash(hash, 'eligibility', @eligibility)
          add_to_hash(hash, 'type', @type)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('eligibility')
            @eligibility = hash['eligibility']
          end
          if hash.has_key?('type')
            @type = hash['type']
          end
        end
      end
    end
  end
end
