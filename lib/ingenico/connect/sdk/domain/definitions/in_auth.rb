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
          # @attr [String] device_category
          # @attr [String] device_id
          # @attr [String] risk_score
          # @attr [String] true_ip_address
          # @attr [String] true_ip_address_country
          class InAuth < Ingenico::Connect::SDK::DataObject

            attr_accessor :device_category

            attr_accessor :device_id

            attr_accessor :risk_score

            attr_accessor :true_ip_address

            attr_accessor :true_ip_address_country

            # @return (Hash)
            def to_h
              hash = super
              hash['deviceCategory'] = @device_category unless @device_category.nil?
              hash['deviceId'] = @device_id unless @device_id.nil?
              hash['riskScore'] = @risk_score unless @risk_score.nil?
              hash['trueIpAddress'] = @true_ip_address unless @true_ip_address.nil?
              hash['trueIpAddressCountry'] = @true_ip_address_country unless @true_ip_address_country.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'deviceCategory'
                @device_category = hash['deviceCategory']
              end
              if hash.has_key? 'deviceId'
                @device_id = hash['deviceId']
              end
              if hash.has_key? 'riskScore'
                @risk_score = hash['riskScore']
              end
              if hash.has_key? 'trueIpAddress'
                @true_ip_address = hash['trueIpAddress']
              end
              if hash.has_key? 'trueIpAddressCountry'
                @true_ip_address_country = hash['trueIpAddressCountry']
              end
            end
          end
        end
      end
    end
  end
end
