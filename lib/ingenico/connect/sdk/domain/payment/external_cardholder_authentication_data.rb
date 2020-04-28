#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] acs_transaction_id
      # @attr [String] applied_exemption
      # @attr [String] cavv
      # @attr [String] cavv_algorithm
      # @attr [String] directory_server_transaction_id
      # @attr [Integer] eci
      # @attr [Integer] scheme_risk_score
      # @attr [String] three_d_secure_version
      # @attr [String] three_d_server_transaction_id
      # @attr [String] validation_result
      # @attr [String] xid
      class ExternalCardholderAuthenticationData < Ingenico::Connect::SDK::DataObject

        attr_accessor :acs_transaction_id

        attr_accessor :applied_exemption

        attr_accessor :cavv

        attr_accessor :cavv_algorithm

        attr_accessor :directory_server_transaction_id

        attr_accessor :eci

        attr_accessor :scheme_risk_score

        attr_accessor :three_d_secure_version

        #
        # @deprecated No replacement
        attr_accessor :three_d_server_transaction_id

        attr_accessor :validation_result

        attr_accessor :xid

        # @return (Hash)
        def to_h
          hash = super
          hash['acsTransactionId'] = @acs_transaction_id unless @acs_transaction_id.nil?
          hash['appliedExemption'] = @applied_exemption unless @applied_exemption.nil?
          hash['cavv'] = @cavv unless @cavv.nil?
          hash['cavvAlgorithm'] = @cavv_algorithm unless @cavv_algorithm.nil?
          hash['directoryServerTransactionId'] = @directory_server_transaction_id unless @directory_server_transaction_id.nil?
          hash['eci'] = @eci unless @eci.nil?
          hash['schemeRiskScore'] = @scheme_risk_score unless @scheme_risk_score.nil?
          hash['threeDSecureVersion'] = @three_d_secure_version unless @three_d_secure_version.nil?
          hash['threeDServerTransactionId'] = @three_d_server_transaction_id unless @three_d_server_transaction_id.nil?
          hash['validationResult'] = @validation_result unless @validation_result.nil?
          hash['xid'] = @xid unless @xid.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'acsTransactionId'
            @acs_transaction_id = hash['acsTransactionId']
          end
          if hash.has_key? 'appliedExemption'
            @applied_exemption = hash['appliedExemption']
          end
          if hash.has_key? 'cavv'
            @cavv = hash['cavv']
          end
          if hash.has_key? 'cavvAlgorithm'
            @cavv_algorithm = hash['cavvAlgorithm']
          end
          if hash.has_key? 'directoryServerTransactionId'
            @directory_server_transaction_id = hash['directoryServerTransactionId']
          end
          if hash.has_key? 'eci'
            @eci = hash['eci']
          end
          if hash.has_key? 'schemeRiskScore'
            @scheme_risk_score = hash['schemeRiskScore']
          end
          if hash.has_key? 'threeDSecureVersion'
            @three_d_secure_version = hash['threeDSecureVersion']
          end
          if hash.has_key? 'threeDServerTransactionId'
            @three_d_server_transaction_id = hash['threeDServerTransactionId']
          end
          if hash.has_key? 'validationResult'
            @validation_result = hash['validationResult']
          end
          if hash.has_key? 'xid'
            @xid = hash['xid']
          end
        end
      end
    end
  end
end
