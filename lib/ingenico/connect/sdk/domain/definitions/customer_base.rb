#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/company_information'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::CompanyInformation] company_information
      # @attr [String] merchant_customer_id
      # @attr [String] vat_number
      class CustomerBase < Ingenico::Connect::SDK::DataObject

        attr_accessor :company_information

        attr_accessor :merchant_customer_id

        #
        # @deprecated Use companyInformation.vatNumber instead
        attr_accessor :vat_number

        # @return (Hash)
        def to_h
          hash = super
          hash['companyInformation'] = @company_information.to_h unless @company_information.nil?
          hash['merchantCustomerId'] = @merchant_customer_id unless @merchant_customer_id.nil?
          hash['vatNumber'] = @vat_number unless @vat_number.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'companyInformation'
            raise TypeError, "value '%s' is not a Hash" % [hash['companyInformation']] unless hash['companyInformation'].is_a? Hash
            @company_information = Ingenico::Connect::SDK::Domain::Definitions::CompanyInformation.new_from_hash(hash['companyInformation'])
          end
          if hash.has_key? 'merchantCustomerId'
            @merchant_customer_id = hash['merchantCustomerId']
          end
          if hash.has_key? 'vatNumber'
            @vat_number = hash['vatNumber']
          end
        end
      end
    end
  end
end
