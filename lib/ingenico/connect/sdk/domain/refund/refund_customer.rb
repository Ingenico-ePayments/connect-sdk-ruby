#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/company_information'
require 'ingenico/connect/sdk/domain/definitions/contact_details_base'
require 'ingenico/connect/sdk/domain/payment/address_personal'

module Ingenico::Connect::SDK
  module Domain
    module Refund

      class RefundCustomer < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Payment::AddressPersonal}
        attr_accessor :address

        # {Ingenico::Connect::SDK::Domain::Definitions::CompanyInformation}
        attr_accessor :company_information

        # {Ingenico::Connect::SDK::Domain::Definitions::ContactDetailsBase}
        attr_accessor :contact_details

        def to_h
          hash = super
          add_to_hash(hash, 'address', @address)
          add_to_hash(hash, 'companyInformation', @company_information)
          add_to_hash(hash, 'contactDetails', @contact_details)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('address')
            if !(hash['address'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['address']]
            end
            @address = Ingenico::Connect::SDK::Domain::Payment::AddressPersonal.new_from_hash(hash['address'])
          end
          if hash.has_key?('companyInformation')
            if !(hash['companyInformation'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['companyInformation']]
            end
            @company_information = Ingenico::Connect::SDK::Domain::Definitions::CompanyInformation.new_from_hash(hash['companyInformation'])
          end
          if hash.has_key?('contactDetails')
            if !(hash['contactDetails'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['contactDetails']]
            end
            @contact_details = Ingenico::Connect::SDK::Domain::Definitions::ContactDetailsBase.new_from_hash(hash['contactDetails'])
          end
        end
      end
    end
  end
end
