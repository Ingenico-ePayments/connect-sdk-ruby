#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class FraugsterResults < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :fraud_investigation_points

        # Integer
        attr_accessor :fraud_score

        def to_h
          hash = super
          add_to_hash(hash, 'fraudInvestigationPoints', @fraud_investigation_points)
          add_to_hash(hash, 'fraudScore', @fraud_score)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('fraudInvestigationPoints')
            @fraud_investigation_points = hash['fraudInvestigationPoints']
          end
          if hash.has_key?('fraudScore')
            @fraud_score = hash['fraudScore']
          end
        end
      end
    end
  end
end
