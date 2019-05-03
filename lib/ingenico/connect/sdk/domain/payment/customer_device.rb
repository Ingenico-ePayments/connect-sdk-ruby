#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/browser_data'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class CustomerDevice < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :accept_header

        # {Ingenico::Connect::SDK::Domain::Payment::BrowserData}
        attr_accessor :browser_data

        # String
        attr_accessor :default_form_fill

        # String
        attr_accessor :device_fingerprint_transaction_id

        # String
        attr_accessor :ip_address

        # String
        attr_accessor :locale

        # String
        attr_accessor :timezone_offset_utc_minutes

        # String
        attr_accessor :user_agent

        def to_h
          hash = super
          add_to_hash(hash, 'acceptHeader', @accept_header)
          add_to_hash(hash, 'browserData', @browser_data)
          add_to_hash(hash, 'defaultFormFill', @default_form_fill)
          add_to_hash(hash, 'deviceFingerprintTransactionId', @device_fingerprint_transaction_id)
          add_to_hash(hash, 'ipAddress', @ip_address)
          add_to_hash(hash, 'locale', @locale)
          add_to_hash(hash, 'timezoneOffsetUtcMinutes', @timezone_offset_utc_minutes)
          add_to_hash(hash, 'userAgent', @user_agent)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('acceptHeader')
            @accept_header = hash['acceptHeader']
          end
          if hash.has_key?('browserData')
            if !(hash['browserData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['browserData']]
            end
            @browser_data = Ingenico::Connect::SDK::Domain::Payment::BrowserData.new_from_hash(hash['browserData'])
          end
          if hash.has_key?('defaultFormFill')
            @default_form_fill = hash['defaultFormFill']
          end
          if hash.has_key?('deviceFingerprintTransactionId')
            @device_fingerprint_transaction_id = hash['deviceFingerprintTransactionId']
          end
          if hash.has_key?('ipAddress')
            @ip_address = hash['ipAddress']
          end
          if hash.has_key?('locale')
            @locale = hash['locale']
          end
          if hash.has_key?('timezoneOffsetUtcMinutes')
            @timezone_offset_utc_minutes = hash['timezoneOffsetUtcMinutes']
          end
          if hash.has_key?('userAgent')
            @user_agent = hash['userAgent']
          end
        end
      end
    end
  end
end
