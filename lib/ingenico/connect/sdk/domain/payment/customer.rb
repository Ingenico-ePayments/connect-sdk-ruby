#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/definitions/customer_base'
require 'ingenico/connect/sdk/domain/payment/address_personal'
require 'ingenico/connect/sdk/domain/payment/contact_details'
require 'ingenico/connect/sdk/domain/payment/customer_account'
require 'ingenico/connect/sdk/domain/payment/customer_device'
require 'ingenico/connect/sdk/domain/payment/personal_information'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [Ingenico::Connect::SDK::Domain::Payment::CustomerAccount] account
          # @attr [String] account_type
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::Address] billing_address
          # @attr [Ingenico::Connect::SDK::Domain::Payment::ContactDetails] contact_details
          # @attr [Ingenico::Connect::SDK::Domain::Payment::CustomerDevice] device
          # @attr [String] fiscal_number
          # @attr [true/false] is_company
          # @attr [true/false] is_previous_customer
          # @attr [String] locale
          # @attr [Ingenico::Connect::SDK::Domain::Payment::PersonalInformation] personal_information
          # @attr [Ingenico::Connect::SDK::Domain::Payment::AddressPersonal] shipping_address
          class Customer < Ingenico::Connect::SDK::Domain::Definitions::CustomerBase

            attr_accessor :account

            attr_accessor :account_type

            attr_accessor :billing_address

            attr_accessor :contact_details

            attr_accessor :device

            attr_accessor :fiscal_number

            attr_accessor :is_company

            attr_accessor :is_previous_customer

            attr_accessor :locale

            attr_accessor :personal_information

            #
            # @deprecated Use Order.shipping.address instead
            attr_accessor :shipping_address

            # @return (Hash)
            def to_h
              hash = super
              hash['account'] = @account.to_h unless @account.nil?
              hash['accountType'] = @account_type unless @account_type.nil?
              hash['billingAddress'] = @billing_address.to_h unless @billing_address.nil?
              hash['contactDetails'] = @contact_details.to_h unless @contact_details.nil?
              hash['device'] = @device.to_h unless @device.nil?
              hash['fiscalNumber'] = @fiscal_number unless @fiscal_number.nil?
              hash['isCompany'] = @is_company unless @is_company.nil?
              hash['isPreviousCustomer'] = @is_previous_customer unless @is_previous_customer.nil?
              hash['locale'] = @locale unless @locale.nil?
              hash['personalInformation'] = @personal_information.to_h unless @personal_information.nil?
              hash['shippingAddress'] = @shipping_address.to_h unless @shipping_address.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'account'
                raise TypeError, "value '%s' is not a Hash" % [hash['account']] unless hash['account'].is_a? Hash
                @account = Ingenico::Connect::SDK::Domain::Payment::CustomerAccount.new_from_hash(hash['account'])
              end
              if hash.has_key? 'accountType'
                @account_type = hash['accountType']
              end
              if hash.has_key? 'billingAddress'
                raise TypeError, "value '%s' is not a Hash" % [hash['billingAddress']] unless hash['billingAddress'].is_a? Hash
                @billing_address = Ingenico::Connect::SDK::Domain::Definitions::Address.new_from_hash(hash['billingAddress'])
              end
              if hash.has_key? 'contactDetails'
                raise TypeError, "value '%s' is not a Hash" % [hash['contactDetails']] unless hash['contactDetails'].is_a? Hash
                @contact_details = Ingenico::Connect::SDK::Domain::Payment::ContactDetails.new_from_hash(hash['contactDetails'])
              end
              if hash.has_key? 'device'
                raise TypeError, "value '%s' is not a Hash" % [hash['device']] unless hash['device'].is_a? Hash
                @device = Ingenico::Connect::SDK::Domain::Payment::CustomerDevice.new_from_hash(hash['device'])
              end
              if hash.has_key? 'fiscalNumber'
                @fiscal_number = hash['fiscalNumber']
              end
              if hash.has_key? 'isCompany'
                @is_company = hash['isCompany']
              end
              if hash.has_key? 'isPreviousCustomer'
                @is_previous_customer = hash['isPreviousCustomer']
              end
              if hash.has_key? 'locale'
                @locale = hash['locale']
              end
              if hash.has_key? 'personalInformation'
                raise TypeError, "value '%s' is not a Hash" % [hash['personalInformation']] unless hash['personalInformation'].is_a? Hash
                @personal_information = Ingenico::Connect::SDK::Domain::Payment::PersonalInformation.new_from_hash(hash['personalInformation'])
              end
              if hash.has_key? 'shippingAddress'
                raise TypeError, "value '%s' is not a Hash" % [hash['shippingAddress']] unless hash['shippingAddress'].is_a? Hash
                @shipping_address = Ingenico::Connect::SDK::Domain::Payment::AddressPersonal.new_from_hash(hash['shippingAddress'])
              end
            end
          end
        end
      end
    end
  end
end
