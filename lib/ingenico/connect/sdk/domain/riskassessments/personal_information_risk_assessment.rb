#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/riskassessments/personal_name_risk_assessment'

module Ingenico::Connect::SDK
  module Domain
    module Riskassessments

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PersonalInformationRiskAssessment PersonalInformationRiskAssessment}
      class PersonalInformationRiskAssessment < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Riskassessments::PersonalNameRiskAssessment}
        attr_accessor :name

        def to_h
          hash = super
          add_to_hash(hash, 'name', @name)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('name')
            if !(hash['name'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['name']]
            end
            @name = Ingenico::Connect::SDK::Domain::Riskassessments::PersonalNameRiskAssessment.new_from_hash(hash['name'])
          end
        end
      end
    end
  end
end
