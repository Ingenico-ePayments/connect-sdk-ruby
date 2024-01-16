#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/result_do_risk_assessment'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Riskassessments
          # @attr [Array<Ingenico::Connect::SDK::Domain::Definitions::ResultDoRiskAssessment>] results
          class RiskAssessmentResponse < Ingenico::Connect::SDK::DataObject

            attr_accessor :results

            # @return (Hash)
            def to_h
              hash = super
              hash['results'] = @results.collect{|val| val.to_h} unless @results.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'results'
                raise TypeError, "value '%s' is not an Array" % [hash['results']] unless hash['results'].is_a? Array
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
  end
end
