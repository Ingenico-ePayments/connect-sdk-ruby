#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Riskassessments

      class CustomerDeviceRiskAssessment < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :default_form_fill

        # String
        attr_accessor :device_fingerprint_transaction_id

        def to_h
          hash = super
          add_to_hash(hash, 'defaultFormFill', @default_form_fill)
          add_to_hash(hash, 'deviceFingerprintTransactionId', @device_fingerprint_transaction_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('defaultFormFill')
            @default_form_fill = hash['defaultFormFill']
          end
          if hash.has_key?('deviceFingerprintTransactionId')
            @device_fingerprint_transaction_id = hash['deviceFingerprintTransactionId']
          end
        end
      end
    end
  end
end
