#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/company_information'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class CustomerBase < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::CompanyInformation}
        attr_accessor :company_information

        # String
        attr_accessor :merchant_customer_id

        # String
        #
        # Deprecated; Use companyInformation.vatNumber instead
        attr_accessor :vat_number

        def to_h
          hash = super
          add_to_hash(hash, 'companyInformation', @company_information)
          add_to_hash(hash, 'merchantCustomerId', @merchant_customer_id)
          add_to_hash(hash, 'vatNumber', @vat_number)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('companyInformation')
            if !(hash['companyInformation'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['companyInformation']]
            end
            @company_information = Ingenico::Connect::SDK::Domain::Definitions::CompanyInformation.new_from_hash(hash['companyInformation'])
          end
          if hash.has_key?('merchantCustomerId')
            @merchant_customer_id = hash['merchantCustomerId']
          end
          if hash.has_key?('vatNumber')
            @vat_number = hash['vatNumber']
          end
        end
      end
    end
  end
end
