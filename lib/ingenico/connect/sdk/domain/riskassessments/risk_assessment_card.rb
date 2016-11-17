#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/domain/definitions/card'
require 'ingenico/connect/sdk/domain/riskassessments/risk_assessment'

module Ingenico::Connect::SDK
  module Domain
    module Riskassessments

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_RiskAssessmentCard RiskAssessmentCard}
      class RiskAssessmentCard < Ingenico::Connect::SDK::Domain::Riskassessments::RiskAssessment

        # {Ingenico::Connect::SDK::Domain::Definitions::Card}
        attr_accessor :card

        def to_h
          hash = super
          add_to_hash(hash, 'card', @card)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('card')
            if !(hash['card'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['card']]
            end
            @card = Ingenico::Connect::SDK::Domain::Definitions::Card.new_from_hash(hash['card'])
          end
        end
      end
    end
  end
end
