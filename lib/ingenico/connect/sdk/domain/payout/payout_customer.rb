#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/definitions/company_information'
require 'ingenico/connect/sdk/domain/definitions/contact_details_base'
require 'ingenico/connect/sdk/domain/payment/personal_name'

module Ingenico::Connect::SDK
  module Domain
    module Payout

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::Address] address
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::CompanyInformation] company_information
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::ContactDetailsBase] contact_details
      # @attr [String] merchant_customer_id
      # @attr [Ingenico::Connect::SDK::Domain::Payment::PersonalName] name
      class PayoutCustomer < Ingenico::Connect::SDK::DataObject

        attr_accessor :address

        attr_accessor :company_information

        attr_accessor :contact_details

        attr_accessor :merchant_customer_id

        attr_accessor :name

        # @return (Hash)
        def to_h
          hash = super
          hash['address'] = @address.to_h unless @address.nil?
          hash['companyInformation'] = @company_information.to_h unless @company_information.nil?
          hash['contactDetails'] = @contact_details.to_h unless @contact_details.nil?
          hash['merchantCustomerId'] = @merchant_customer_id unless @merchant_customer_id.nil?
          hash['name'] = @name.to_h unless @name.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'address'
            raise TypeError, "value '%s' is not a Hash" % [hash['address']] unless hash['address'].is_a? Hash
            @address = Ingenico::Connect::SDK::Domain::Definitions::Address.new_from_hash(hash['address'])
          end
          if hash.has_key? 'companyInformation'
            raise TypeError, "value '%s' is not a Hash" % [hash['companyInformation']] unless hash['companyInformation'].is_a? Hash
            @company_information = Ingenico::Connect::SDK::Domain::Definitions::CompanyInformation.new_from_hash(hash['companyInformation'])
          end
          if hash.has_key? 'contactDetails'
            raise TypeError, "value '%s' is not a Hash" % [hash['contactDetails']] unless hash['contactDetails'].is_a? Hash
            @contact_details = Ingenico::Connect::SDK::Domain::Definitions::ContactDetailsBase.new_from_hash(hash['contactDetails'])
          end
          if hash.has_key? 'merchantCustomerId'
            @merchant_customer_id = hash['merchantCustomerId']
          end
          if hash.has_key? 'name'
            raise TypeError, "value '%s' is not a Hash" % [hash['name']] unless hash['name'].is_a? Hash
            @name = Ingenico::Connect::SDK::Domain::Payment::PersonalName.new_from_hash(hash['name'])
          end
        end
      end
    end
  end
end
