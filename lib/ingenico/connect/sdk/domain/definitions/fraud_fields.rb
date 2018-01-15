#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/definitions/fraud_fields_shipping_details'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class FraudFields < Ingenico::Connect::SDK::DataObject

        # true/false
        attr_accessor :addresses_are_identical

        # String
        attr_accessor :black_list_data

        # {Ingenico::Connect::SDK::Domain::Definitions::Address}
        attr_accessor :card_owner_address

        # String
        attr_accessor :customer_ip_address

        # String
        attr_accessor :default_form_fill

        # true/false
        attr_accessor :device_fingerprint_activated

        # String
        attr_accessor :device_fingerprint_transaction_id

        # String
        attr_accessor :gift_card_type

        # String
        attr_accessor :gift_message

        # true/false
        attr_accessor :has_forgotten_pwd

        # true/false
        attr_accessor :has_password

        # true/false
        attr_accessor :is_previous_customer

        # String
        attr_accessor :order_timezone

        # String
        attr_accessor :ship_comments

        # String
        attr_accessor :shipment_tracking_number

        # {Ingenico::Connect::SDK::Domain::Definitions::FraudFieldsShippingDetails}
        attr_accessor :shipping_details

        # Array of String
        attr_accessor :user_data

        # String
        attr_accessor :website

        def to_h
          hash = super
          add_to_hash(hash, 'addressesAreIdentical', @addresses_are_identical)
          add_to_hash(hash, 'blackListData', @black_list_data)
          add_to_hash(hash, 'cardOwnerAddress', @card_owner_address)
          add_to_hash(hash, 'customerIpAddress', @customer_ip_address)
          add_to_hash(hash, 'defaultFormFill', @default_form_fill)
          add_to_hash(hash, 'deviceFingerprintActivated', @device_fingerprint_activated)
          add_to_hash(hash, 'deviceFingerprintTransactionId', @device_fingerprint_transaction_id)
          add_to_hash(hash, 'giftCardType', @gift_card_type)
          add_to_hash(hash, 'giftMessage', @gift_message)
          add_to_hash(hash, 'hasForgottenPwd', @has_forgotten_pwd)
          add_to_hash(hash, 'hasPassword', @has_password)
          add_to_hash(hash, 'isPreviousCustomer', @is_previous_customer)
          add_to_hash(hash, 'orderTimezone', @order_timezone)
          add_to_hash(hash, 'shipComments', @ship_comments)
          add_to_hash(hash, 'shipmentTrackingNumber', @shipment_tracking_number)
          add_to_hash(hash, 'shippingDetails', @shipping_details)
          add_to_hash(hash, 'userData', @user_data)
          add_to_hash(hash, 'website', @website)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('addressesAreIdentical')
            @addresses_are_identical = hash['addressesAreIdentical']
          end
          if hash.has_key?('blackListData')
            @black_list_data = hash['blackListData']
          end
          if hash.has_key?('cardOwnerAddress')
            if !(hash['cardOwnerAddress'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['cardOwnerAddress']]
            end
            @card_owner_address = Ingenico::Connect::SDK::Domain::Definitions::Address.new_from_hash(hash['cardOwnerAddress'])
          end
          if hash.has_key?('customerIpAddress')
            @customer_ip_address = hash['customerIpAddress']
          end
          if hash.has_key?('defaultFormFill')
            @default_form_fill = hash['defaultFormFill']
          end
          if hash.has_key?('deviceFingerprintActivated')
            @device_fingerprint_activated = hash['deviceFingerprintActivated']
          end
          if hash.has_key?('deviceFingerprintTransactionId')
            @device_fingerprint_transaction_id = hash['deviceFingerprintTransactionId']
          end
          if hash.has_key?('giftCardType')
            @gift_card_type = hash['giftCardType']
          end
          if hash.has_key?('giftMessage')
            @gift_message = hash['giftMessage']
          end
          if hash.has_key?('hasForgottenPwd')
            @has_forgotten_pwd = hash['hasForgottenPwd']
          end
          if hash.has_key?('hasPassword')
            @has_password = hash['hasPassword']
          end
          if hash.has_key?('isPreviousCustomer')
            @is_previous_customer = hash['isPreviousCustomer']
          end
          if hash.has_key?('orderTimezone')
            @order_timezone = hash['orderTimezone']
          end
          if hash.has_key?('shipComments')
            @ship_comments = hash['shipComments']
          end
          if hash.has_key?('shipmentTrackingNumber')
            @shipment_tracking_number = hash['shipmentTrackingNumber']
          end
          if hash.has_key?('shippingDetails')
            if !(hash['shippingDetails'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['shippingDetails']]
            end
            @shipping_details = Ingenico::Connect::SDK::Domain::Definitions::FraudFieldsShippingDetails.new_from_hash(hash['shippingDetails'])
          end
          if hash.has_key?('userData')
            if !(hash['userData'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['userData']]
            end
            @user_data = []
            hash['userData'].each do |e|
              @user_data << e
            end
          end
          if hash.has_key?('website')
            @website = hash['website']
          end
        end
      end
    end
  end
end
