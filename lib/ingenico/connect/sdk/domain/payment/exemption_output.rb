#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] exemption_raised
      # @attr [String] exemption_rejection_reason
      # @attr [String] exemption_request
      class ExemptionOutput < Ingenico::Connect::SDK::DataObject

        attr_accessor :exemption_raised

        attr_accessor :exemption_rejection_reason

        attr_accessor :exemption_request

        # @return (Hash)
        def to_h
          hash = super
          hash['exemptionRaised'] = @exemption_raised unless @exemption_raised.nil?
          hash['exemptionRejectionReason'] = @exemption_rejection_reason unless @exemption_rejection_reason.nil?
          hash['exemptionRequest'] = @exemption_request unless @exemption_request.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'exemptionRaised'
            @exemption_raised = hash['exemptionRaised']
          end
          if hash.has_key? 'exemptionRejectionReason'
            @exemption_rejection_reason = hash['exemptionRejectionReason']
          end
          if hash.has_key? 'exemptionRequest'
            @exemption_request = hash['exemptionRequest']
          end
        end
      end
    end
  end
end
