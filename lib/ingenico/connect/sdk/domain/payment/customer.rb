#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/definitions/customer_base'
require 'ingenico/connect/sdk/domain/payment/address_personal'
require 'ingenico/connect/sdk/domain/payment/contact_details'
require 'ingenico/connect/sdk/domain/payment/customer_account'
require 'ingenico/connect/sdk/domain/payment/customer_device'
require 'ingenico/connect/sdk/domain/payment/personal_information'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class Customer < Ingenico::Connect::SDK::Domain::Definitions::CustomerBase

        # {Ingenico::Connect::SDK::Domain::Payment::CustomerAccount}
        attr_accessor :account

        # String
        attr_accessor :account_type

        # {Ingenico::Connect::SDK::Domain::Definitions::Address}
        attr_accessor :billing_address

        # {Ingenico::Connect::SDK::Domain::Payment::ContactDetails}
        attr_accessor :contact_details

        # {Ingenico::Connect::SDK::Domain::Payment::CustomerDevice}
        attr_accessor :device

        # String
        attr_accessor :fiscal_number

        # true/false
        attr_accessor :is_previous_customer

        # String
        attr_accessor :locale

        # {Ingenico::Connect::SDK::Domain::Payment::PersonalInformation}
        attr_accessor :personal_information

        # {Ingenico::Connect::SDK::Domain::Payment::AddressPersonal}
        #
        # Deprecated; Use Order.shipping.address instead
        attr_accessor :shipping_address

        def to_h
          hash = super
          add_to_hash(hash, 'account', @account)
          add_to_hash(hash, 'accountType', @account_type)
          add_to_hash(hash, 'billingAddress', @billing_address)
          add_to_hash(hash, 'contactDetails', @contact_details)
          add_to_hash(hash, 'device', @device)
          add_to_hash(hash, 'fiscalNumber', @fiscal_number)
          add_to_hash(hash, 'isPreviousCustomer', @is_previous_customer)
          add_to_hash(hash, 'locale', @locale)
          add_to_hash(hash, 'personalInformation', @personal_information)
          add_to_hash(hash, 'shippingAddress', @shipping_address)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('account')
            if !(hash['account'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['account']]
            end
            @account = Ingenico::Connect::SDK::Domain::Payment::CustomerAccount.new_from_hash(hash['account'])
          end
          if hash.has_key?('accountType')
            @account_type = hash['accountType']
          end
          if hash.has_key?('billingAddress')
            if !(hash['billingAddress'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['billingAddress']]
            end
            @billing_address = Ingenico::Connect::SDK::Domain::Definitions::Address.new_from_hash(hash['billingAddress'])
          end
          if hash.has_key?('contactDetails')
            if !(hash['contactDetails'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['contactDetails']]
            end
            @contact_details = Ingenico::Connect::SDK::Domain::Payment::ContactDetails.new_from_hash(hash['contactDetails'])
          end
          if hash.has_key?('device')
            if !(hash['device'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['device']]
            end
            @device = Ingenico::Connect::SDK::Domain::Payment::CustomerDevice.new_from_hash(hash['device'])
          end
          if hash.has_key?('fiscalNumber')
            @fiscal_number = hash['fiscalNumber']
          end
          if hash.has_key?('isPreviousCustomer')
            @is_previous_customer = hash['isPreviousCustomer']
          end
          if hash.has_key?('locale')
            @locale = hash['locale']
          end
          if hash.has_key?('personalInformation')
            if !(hash['personalInformation'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['personalInformation']]
            end
            @personal_information = Ingenico::Connect::SDK::Domain::Payment::PersonalInformation.new_from_hash(hash['personalInformation'])
          end
          if hash.has_key?('shippingAddress')
            if !(hash['shippingAddress'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['shippingAddress']]
            end
            @shipping_address = Ingenico::Connect::SDK::Domain::Payment::AddressPersonal.new_from_hash(hash['shippingAddress'])
          end
        end
      end
    end
  end
end
