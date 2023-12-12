#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/fraud_results'
require 'ingenico/connect/sdk/domain/definitions/fraud_results_retail_decisions'
require 'ingenico/connect/sdk/domain/definitions/fraugster_results'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [String] avs_result
      # @attr [String] cvv_result
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::FraugsterResults] fraugster
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::FraudResultsRetailDecisions] retail_decisions
      class CardFraudResults < Ingenico::Connect::SDK::Domain::Definitions::FraudResults

        attr_accessor :avs_result

        attr_accessor :cvv_result

        attr_accessor :fraugster

        attr_accessor :retail_decisions

        # @return (Hash)
        def to_h
          hash = super
          hash['avsResult'] = @avs_result unless @avs_result.nil?
          hash['cvvResult'] = @cvv_result unless @cvv_result.nil?
          hash['fraugster'] = @fraugster.to_h unless @fraugster.nil?
          hash['retailDecisions'] = @retail_decisions.to_h unless @retail_decisions.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'avsResult'
            @avs_result = hash['avsResult']
          end
          if hash.has_key? 'cvvResult'
            @cvv_result = hash['cvvResult']
          end
          if hash.has_key? 'fraugster'
            raise TypeError, "value '%s' is not a Hash" % [hash['fraugster']] unless hash['fraugster'].is_a? Hash
            @fraugster = Ingenico::Connect::SDK::Domain::Definitions::FraugsterResults.new_from_hash(hash['fraugster'])
          end
          if hash.has_key? 'retailDecisions'
            raise TypeError, "value '%s' is not a Hash" % [hash['retailDecisions']] unless hash['retailDecisions'].is_a? Hash
            @retail_decisions = Ingenico::Connect::SDK::Domain::Definitions::FraudResultsRetailDecisions.new_from_hash(hash['retailDecisions'])
          end
        end
      end
    end
  end
end
