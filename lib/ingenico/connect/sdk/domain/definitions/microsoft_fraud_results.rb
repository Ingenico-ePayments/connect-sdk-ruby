#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [Integer] fraud_score
      class MicrosoftFraudResults < Ingenico::Connect::SDK::DataObject

        attr_accessor :fraud_score

        # @return (Hash)
        def to_h
          hash = super
          hash['fraudScore'] = @fraud_score unless @fraud_score.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'fraudScore'
            @fraud_score = hash['fraudScore']
          end
        end
      end
    end
  end
end
