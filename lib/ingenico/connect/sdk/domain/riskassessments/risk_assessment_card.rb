#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/definitions/card'
require 'ingenico/connect/sdk/domain/riskassessments/risk_assessment'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Riskassessments
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::Card] card
          class RiskAssessmentCard < Ingenico::Connect::SDK::Domain::Riskassessments::RiskAssessment

            attr_accessor :card

            # @return (Hash)
            def to_h
              hash = super
              hash['card'] = @card.to_h unless @card.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'card'
                raise TypeError, "value '%s' is not a Hash" % [hash['card']] unless hash['card'].is_a? Hash
                @card = Ingenico::Connect::SDK::Domain::Definitions::Card.new_from_hash(hash['card'])
              end
            end
          end
        end
      end
    end
  end
end
