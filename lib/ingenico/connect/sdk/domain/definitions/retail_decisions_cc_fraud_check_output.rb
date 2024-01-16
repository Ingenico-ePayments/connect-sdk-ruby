#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Definitions
          # @attr [String] fraud_code
          # @attr [String] fraud_neural
          # @attr [String] fraud_rcf
          class RetailDecisionsCCFraudCheckOutput < Ingenico::Connect::SDK::DataObject

            attr_accessor :fraud_code

            attr_accessor :fraud_neural

            attr_accessor :fraud_rcf

            # @return (Hash)
            def to_h
              hash = super
              hash['fraudCode'] = @fraud_code unless @fraud_code.nil?
              hash['fraudNeural'] = @fraud_neural unless @fraud_neural.nil?
              hash['fraudRCF'] = @fraud_rcf unless @fraud_rcf.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'fraudCode'
                @fraud_code = hash['fraudCode']
              end
              if hash.has_key? 'fraudNeural'
                @fraud_neural = hash['fraudNeural']
              end
              if hash.has_key? 'fraudRCF'
                @fraud_rcf = hash['fraudRCF']
              end
            end
          end
        end
      end
    end
  end
end
