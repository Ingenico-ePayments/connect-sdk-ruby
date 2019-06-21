#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/browser_data'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] accept_header
      # @attr [Ingenico::Connect::SDK::Domain::Payment::BrowserData] browser_data
      # @attr [String] default_form_fill
      # @attr [String] device_fingerprint_transaction_id
      # @attr [String] ip_address
      # @attr [String] locale
      # @attr [String] timezone_offset_utc_minutes
      # @attr [String] user_agent
      class CustomerDevice < Ingenico::Connect::SDK::DataObject

        attr_accessor :accept_header

        attr_accessor :browser_data

        attr_accessor :default_form_fill

        attr_accessor :device_fingerprint_transaction_id

        attr_accessor :ip_address

        attr_accessor :locale

        attr_accessor :timezone_offset_utc_minutes

        attr_accessor :user_agent

        # @return (Hash)
        def to_h
          hash = super
          hash['acceptHeader'] = @accept_header unless @accept_header.nil?
          hash['browserData'] = @browser_data.to_h unless @browser_data.nil?
          hash['defaultFormFill'] = @default_form_fill unless @default_form_fill.nil?
          hash['deviceFingerprintTransactionId'] = @device_fingerprint_transaction_id unless @device_fingerprint_transaction_id.nil?
          hash['ipAddress'] = @ip_address unless @ip_address.nil?
          hash['locale'] = @locale unless @locale.nil?
          hash['timezoneOffsetUtcMinutes'] = @timezone_offset_utc_minutes unless @timezone_offset_utc_minutes.nil?
          hash['userAgent'] = @user_agent unless @user_agent.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'acceptHeader'
            @accept_header = hash['acceptHeader']
          end
          if hash.has_key? 'browserData'
            raise TypeError, "value '%s' is not a Hash" % [hash['browserData']] unless hash['browserData'].is_a? Hash
            @browser_data = Ingenico::Connect::SDK::Domain::Payment::BrowserData.new_from_hash(hash['browserData'])
          end
          if hash.has_key? 'defaultFormFill'
            @default_form_fill = hash['defaultFormFill']
          end
          if hash.has_key? 'deviceFingerprintTransactionId'
            @device_fingerprint_transaction_id = hash['deviceFingerprintTransactionId']
          end
          if hash.has_key? 'ipAddress'
            @ip_address = hash['ipAddress']
          end
          if hash.has_key? 'locale'
            @locale = hash['locale']
          end
          if hash.has_key? 'timezoneOffsetUtcMinutes'
            @timezone_offset_utc_minutes = hash['timezoneOffsetUtcMinutes']
          end
          if hash.has_key? 'userAgent'
            @user_agent = hash['userAgent']
          end
        end
      end
    end
  end
end
