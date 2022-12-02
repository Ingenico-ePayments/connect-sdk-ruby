#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [String] clause_name
      # @attr [String] device_country_code
      # @attr [String] device_id
      # @attr [Integer] fraud_score
      # @attr [String] policy_applied
      # @attr [String] true_ip_address
      # @attr [String] user_device_type
      class MicrosoftFraudResults < Ingenico::Connect::SDK::DataObject

        attr_accessor :clause_name

        attr_accessor :device_country_code

        attr_accessor :device_id

        attr_accessor :fraud_score

        attr_accessor :policy_applied

        attr_accessor :true_ip_address

        attr_accessor :user_device_type

        # @return (Hash)
        def to_h
          hash = super
          hash['clauseName'] = @clause_name unless @clause_name.nil?
          hash['deviceCountryCode'] = @device_country_code unless @device_country_code.nil?
          hash['deviceId'] = @device_id unless @device_id.nil?
          hash['fraudScore'] = @fraud_score unless @fraud_score.nil?
          hash['policyApplied'] = @policy_applied unless @policy_applied.nil?
          hash['trueIpAddress'] = @true_ip_address unless @true_ip_address.nil?
          hash['userDeviceType'] = @user_device_type unless @user_device_type.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'clauseName'
            @clause_name = hash['clauseName']
          end
          if hash.has_key? 'deviceCountryCode'
            @device_country_code = hash['deviceCountryCode']
          end
          if hash.has_key? 'deviceId'
            @device_id = hash['deviceId']
          end
          if hash.has_key? 'fraudScore'
            @fraud_score = hash['fraudScore']
          end
          if hash.has_key? 'policyApplied'
            @policy_applied = hash['policyApplied']
          end
          if hash.has_key? 'trueIpAddress'
            @true_ip_address = hash['trueIpAddress']
          end
          if hash.has_key? 'userDeviceType'
            @user_device_type = hash['userDeviceType']
          end
        end
      end
    end
  end
end
