#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/definitions/fraud_fields_shipping_details'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Definitions
          # @attr [true/false] addresses_are_identical
          # @attr [String] black_list_data
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::Address] card_owner_address
          # @attr [String] customer_ip_address
          # @attr [String] default_form_fill
          # @attr [true/false] device_fingerprint_activated
          # @attr [String] device_fingerprint_transaction_id
          # @attr [String] gift_card_type
          # @attr [String] gift_message
          # @attr [true/false] has_forgotten_pwd
          # @attr [true/false] has_password
          # @attr [true/false] is_previous_customer
          # @attr [String] order_timezone
          # @attr [String] ship_comments
          # @attr [String] shipment_tracking_number
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::FraudFieldsShippingDetails] shipping_details
          # @attr [Array<String>] user_data
          # @attr [String] website
          class FraudFields < Ingenico::Connect::SDK::DataObject

            #
            # @deprecated For risk assessments there is no replacement. For other calls, use Order.shipping.addressIndicator instead
            attr_accessor :addresses_are_identical

            attr_accessor :black_list_data

            #
            # @deprecated This should be the same as Order.customer.billingAddress
            attr_accessor :card_owner_address

            attr_accessor :customer_ip_address

            #
            # @deprecated Use Order.customer.device.defaultFormFill instead
            attr_accessor :default_form_fill

            #
            # @deprecated No replacement
            attr_accessor :device_fingerprint_activated

            #
            # @deprecated Use Order.customer.device.deviceFingerprintTransactionId instead
            attr_accessor :device_fingerprint_transaction_id

            attr_accessor :gift_card_type

            attr_accessor :gift_message

            #
            # @deprecated Use Order.customer.account.hasForgottenPassword instead
            attr_accessor :has_forgotten_pwd

            #
            # @deprecated Use Order.customer.account.hasPassword instead
            attr_accessor :has_password

            #
            # @deprecated Use Order.customer.isPreviousCustomer instead
            attr_accessor :is_previous_customer

            attr_accessor :order_timezone

            #
            # @deprecated Use Order.shipping.comments instead
            attr_accessor :ship_comments

            #
            # @deprecated Use Order.shipping.trackingNumber instead
            attr_accessor :shipment_tracking_number

            #
            # @deprecated No replacement
            attr_accessor :shipping_details

            attr_accessor :user_data

            #
            # @deprecated Use Merchant.websiteUrl instead
            attr_accessor :website

            # @return (Hash)
            def to_h
              hash = super
              hash['addressesAreIdentical'] = @addresses_are_identical unless @addresses_are_identical.nil?
              hash['blackListData'] = @black_list_data unless @black_list_data.nil?
              hash['cardOwnerAddress'] = @card_owner_address.to_h unless @card_owner_address.nil?
              hash['customerIpAddress'] = @customer_ip_address unless @customer_ip_address.nil?
              hash['defaultFormFill'] = @default_form_fill unless @default_form_fill.nil?
              hash['deviceFingerprintActivated'] = @device_fingerprint_activated unless @device_fingerprint_activated.nil?
              hash['deviceFingerprintTransactionId'] = @device_fingerprint_transaction_id unless @device_fingerprint_transaction_id.nil?
              hash['giftCardType'] = @gift_card_type unless @gift_card_type.nil?
              hash['giftMessage'] = @gift_message unless @gift_message.nil?
              hash['hasForgottenPwd'] = @has_forgotten_pwd unless @has_forgotten_pwd.nil?
              hash['hasPassword'] = @has_password unless @has_password.nil?
              hash['isPreviousCustomer'] = @is_previous_customer unless @is_previous_customer.nil?
              hash['orderTimezone'] = @order_timezone unless @order_timezone.nil?
              hash['shipComments'] = @ship_comments unless @ship_comments.nil?
              hash['shipmentTrackingNumber'] = @shipment_tracking_number unless @shipment_tracking_number.nil?
              hash['shippingDetails'] = @shipping_details.to_h unless @shipping_details.nil?
              hash['userData'] = @user_data unless @user_data.nil?
              hash['website'] = @website unless @website.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'addressesAreIdentical'
                @addresses_are_identical = hash['addressesAreIdentical']
              end
              if hash.has_key? 'blackListData'
                @black_list_data = hash['blackListData']
              end
              if hash.has_key? 'cardOwnerAddress'
                raise TypeError, "value '%s' is not a Hash" % [hash['cardOwnerAddress']] unless hash['cardOwnerAddress'].is_a? Hash
                @card_owner_address = Ingenico::Connect::SDK::Domain::Definitions::Address.new_from_hash(hash['cardOwnerAddress'])
              end
              if hash.has_key? 'customerIpAddress'
                @customer_ip_address = hash['customerIpAddress']
              end
              if hash.has_key? 'defaultFormFill'
                @default_form_fill = hash['defaultFormFill']
              end
              if hash.has_key? 'deviceFingerprintActivated'
                @device_fingerprint_activated = hash['deviceFingerprintActivated']
              end
              if hash.has_key? 'deviceFingerprintTransactionId'
                @device_fingerprint_transaction_id = hash['deviceFingerprintTransactionId']
              end
              if hash.has_key? 'giftCardType'
                @gift_card_type = hash['giftCardType']
              end
              if hash.has_key? 'giftMessage'
                @gift_message = hash['giftMessage']
              end
              if hash.has_key? 'hasForgottenPwd'
                @has_forgotten_pwd = hash['hasForgottenPwd']
              end
              if hash.has_key? 'hasPassword'
                @has_password = hash['hasPassword']
              end
              if hash.has_key? 'isPreviousCustomer'
                @is_previous_customer = hash['isPreviousCustomer']
              end
              if hash.has_key? 'orderTimezone'
                @order_timezone = hash['orderTimezone']
              end
              if hash.has_key? 'shipComments'
                @ship_comments = hash['shipComments']
              end
              if hash.has_key? 'shipmentTrackingNumber'
                @shipment_tracking_number = hash['shipmentTrackingNumber']
              end
              if hash.has_key? 'shippingDetails'
                raise TypeError, "value '%s' is not a Hash" % [hash['shippingDetails']] unless hash['shippingDetails'].is_a? Hash
                @shipping_details = Ingenico::Connect::SDK::Domain::Definitions::FraudFieldsShippingDetails.new_from_hash(hash['shippingDetails'])
              end
              if hash.has_key? 'userData'
                raise TypeError, "value '%s' is not an Array" % [hash['userData']] unless hash['userData'].is_a? Array
                @user_data = []
                hash['userData'].each do |e|
                  @user_data << e
                end
              end
              if hash.has_key? 'website'
                @website = hash['website']
              end
            end
          end
        end
      end
    end
  end
end
