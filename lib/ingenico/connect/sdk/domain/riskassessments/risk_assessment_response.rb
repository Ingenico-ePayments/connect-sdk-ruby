#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/result_do_risk_assessment'

module Ingenico::Connect::SDK
  module Domain
    module Riskassessments

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_RiskAssessmentResponse RiskAssessmentResponse}
      class RiskAssessmentResponse < Ingenico::Connect::SDK::DataObject

        # Array of {Ingenico::Connect::SDK::Domain::Definitions::ResultDoRiskAssessment}
        attr_accessor :results

        def to_h
          hash = super
          add_to_hash(hash, 'results', @results)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('results')
            if !(hash['results'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['results']]
            end
            @results = []
            hash['results'].each do |e|
              @results << Ingenico::Connect::SDK::Domain::Definitions::ResultDoRiskAssessment.new_from_hash(e)
            end
          end
        end
      end
    end
  end
end
