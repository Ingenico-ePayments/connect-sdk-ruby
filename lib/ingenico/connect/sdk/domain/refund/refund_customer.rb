#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/company_information'
require 'ingenico/connect/sdk/domain/definitions/contact_details_base'
require 'ingenico/connect/sdk/domain/payment/address_personal'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Refund
          # @attr [Ingenico::Connect::SDK::Domain::Payment::AddressPersonal] address
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::CompanyInformation] company_information
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::ContactDetailsBase] contact_details
          # @attr [String] fiscal_number
          class RefundCustomer < Ingenico::Connect::SDK::DataObject

            attr_accessor :address

            attr_accessor :company_information

            attr_accessor :contact_details

            attr_accessor :fiscal_number

            # @return (Hash)
            def to_h
              hash = super
              hash['address'] = @address.to_h unless @address.nil?
              hash['companyInformation'] = @company_information.to_h unless @company_information.nil?
              hash['contactDetails'] = @contact_details.to_h unless @contact_details.nil?
              hash['fiscalNumber'] = @fiscal_number unless @fiscal_number.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'address'
                raise TypeError, "value '%s' is not a Hash" % [hash['address']] unless hash['address'].is_a? Hash
                @address = Ingenico::Connect::SDK::Domain::Payment::AddressPersonal.new_from_hash(hash['address'])
              end
              if hash.has_key? 'companyInformation'
                raise TypeError, "value '%s' is not a Hash" % [hash['companyInformation']] unless hash['companyInformation'].is_a? Hash
                @company_information = Ingenico::Connect::SDK::Domain::Definitions::CompanyInformation.new_from_hash(hash['companyInformation'])
              end
              if hash.has_key? 'contactDetails'
                raise TypeError, "value '%s' is not a Hash" % [hash['contactDetails']] unless hash['contactDetails'].is_a? Hash
                @contact_details = Ingenico::Connect::SDK::Domain::Definitions::ContactDetailsBase.new_from_hash(hash['contactDetails'])
              end
              if hash.has_key? 'fiscalNumber'
                @fiscal_number = hash['fiscalNumber']
              end
            end
          end
        end
      end
    end
  end
end
