#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/address_personal'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Ingenico::Connect::SDK::Domain::Payment::AddressPersonal] address
      # @attr [String] address_indicator
      # @attr [String] comments
      # @attr [String] email_address
      # @attr [String] first_usage_date
      # @attr [true/false] is_first_usage
      # @attr [String] tracking_number
      # @attr [String] type
      class Shipping < Ingenico::Connect::SDK::DataObject

        attr_accessor :address

        attr_accessor :address_indicator

        attr_accessor :comments

        attr_accessor :email_address

        attr_accessor :first_usage_date

        attr_accessor :is_first_usage

        attr_accessor :tracking_number

        attr_accessor :type

        # @return (Hash)
        def to_h
          hash = super
          hash['address'] = @address.to_h unless @address.nil?
          hash['addressIndicator'] = @address_indicator unless @address_indicator.nil?
          hash['comments'] = @comments unless @comments.nil?
          hash['emailAddress'] = @email_address unless @email_address.nil?
          hash['firstUsageDate'] = @first_usage_date unless @first_usage_date.nil?
          hash['isFirstUsage'] = @is_first_usage unless @is_first_usage.nil?
          hash['trackingNumber'] = @tracking_number unless @tracking_number.nil?
          hash['type'] = @type unless @type.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'address'
            raise TypeError, "value '%s' is not a Hash" % [hash['address']] unless hash['address'].is_a? Hash
            @address = Ingenico::Connect::SDK::Domain::Payment::AddressPersonal.new_from_hash(hash['address'])
          end
          if hash.has_key? 'addressIndicator'
            @address_indicator = hash['addressIndicator']
          end
          if hash.has_key? 'comments'
            @comments = hash['comments']
          end
          if hash.has_key? 'emailAddress'
            @email_address = hash['emailAddress']
          end
          if hash.has_key? 'firstUsageDate'
            @first_usage_date = hash['firstUsageDate']
          end
          if hash.has_key? 'isFirstUsage'
            @is_first_usage = hash['isFirstUsage']
          end
          if hash.has_key? 'trackingNumber'
            @tracking_number = hash['trackingNumber']
          end
          if hash.has_key? 'type'
            @type = hash['type']
          end
        end
      end
    end
  end
end
