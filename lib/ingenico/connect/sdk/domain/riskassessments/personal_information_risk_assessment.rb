#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/riskassessments/personal_name_risk_assessment'

module Ingenico::Connect::SDK
  module Domain
    module Riskassessments

      # @attr [Ingenico::Connect::SDK::Domain::Riskassessments::PersonalNameRiskAssessment] name
      class PersonalInformationRiskAssessment < Ingenico::Connect::SDK::DataObject

        attr_accessor :name

        # @return (Hash)
        def to_h
          hash = super
          hash['name'] = @name.to_h unless @name.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'name'
            raise TypeError, "value '%s' is not a Hash" % [hash['name']] unless hash['name'].is_a? Hash
            @name = Ingenico::Connect::SDK::Domain::Riskassessments::PersonalNameRiskAssessment.new_from_hash(hash['name'])
          end
        end
      end
    end
  end
end
