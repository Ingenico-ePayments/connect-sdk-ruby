#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Riskassessments
          # @attr [String] default_form_fill
          # @attr [String] device_fingerprint_transaction_id
          class CustomerDeviceRiskAssessment < Ingenico::Connect::SDK::DataObject

            attr_accessor :default_form_fill

            attr_accessor :device_fingerprint_transaction_id

            # @return (Hash)
            def to_h
              hash = super
              hash['defaultFormFill'] = @default_form_fill unless @default_form_fill.nil?
              hash['deviceFingerprintTransactionId'] = @device_fingerprint_transaction_id unless @device_fingerprint_transaction_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'defaultFormFill'
                @default_form_fill = hash['defaultFormFill']
              end
              if hash.has_key? 'deviceFingerprintTransactionId'
                @device_fingerprint_transaction_id = hash['deviceFingerprintTransactionId']
              end
            end
          end
        end
      end
    end
  end
end
