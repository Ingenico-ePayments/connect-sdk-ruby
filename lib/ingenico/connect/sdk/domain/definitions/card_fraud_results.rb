#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/domain/definitions/fraud_results'
require 'ingenico/connect/sdk/domain/definitions/fraud_results_retail_decisions'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_CardFraudResults CardFraudResults}
      class CardFraudResults < Ingenico::Connect::SDK::Domain::Definitions::FraudResults

        # String
        attr_accessor :avs_result

        # String
        attr_accessor :cvv_result

        # {Ingenico::Connect::SDK::Domain::Definitions::FraudResultsRetailDecisions}
        attr_accessor :retail_decisions

        def to_h
          hash = super
          add_to_hash(hash, 'avsResult', @avs_result)
          add_to_hash(hash, 'cvvResult', @cvv_result)
          add_to_hash(hash, 'retailDecisions', @retail_decisions)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('avsResult')
            @avs_result = hash['avsResult']
          end
          if hash.has_key?('cvvResult')
            @cvv_result = hash['cvvResult']
          end
          if hash.has_key?('retailDecisions')
            if !(hash['retailDecisions'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['retailDecisions']]
            end
            @retail_decisions = Ingenico::Connect::SDK::Domain::Definitions::FraudResultsRetailDecisions.new_from_hash(hash['retailDecisions'])
          end
        end
      end
    end
  end
end
