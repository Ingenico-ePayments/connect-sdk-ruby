#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/mandates/mandate_address'
require 'ingenico/connect/sdk/domain/mandates/mandate_contact_details'
require 'ingenico/connect/sdk/domain/mandates/mandate_personal_information'

module Ingenico::Connect::SDK
  module Domain
    module Mandates

      class MandateCustomer < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban}
        attr_accessor :bank_account_iban

        # String
        attr_accessor :company_name

        # {Ingenico::Connect::SDK::Domain::Mandates::MandateContactDetails}
        attr_accessor :contact_details

        # {Ingenico::Connect::SDK::Domain::Mandates::MandateAddress}
        attr_accessor :mandate_address

        # {Ingenico::Connect::SDK::Domain::Mandates::MandatePersonalInformation}
        attr_accessor :personal_information

        def to_h
          hash = super
          add_to_hash(hash, 'bankAccountIban', @bank_account_iban)
          add_to_hash(hash, 'companyName', @company_name)
          add_to_hash(hash, 'contactDetails', @contact_details)
          add_to_hash(hash, 'mandateAddress', @mandate_address)
          add_to_hash(hash, 'personalInformation', @personal_information)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('bankAccountIban')
            if !(hash['bankAccountIban'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']]
            end
            @bank_account_iban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban.new_from_hash(hash['bankAccountIban'])
          end
          if hash.has_key?('companyName')
            @company_name = hash['companyName']
          end
          if hash.has_key?('contactDetails')
            if !(hash['contactDetails'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['contactDetails']]
            end
            @contact_details = Ingenico::Connect::SDK::Domain::Mandates::MandateContactDetails.new_from_hash(hash['contactDetails'])
          end
          if hash.has_key?('mandateAddress')
            if !(hash['mandateAddress'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['mandateAddress']]
            end
            @mandate_address = Ingenico::Connect::SDK::Domain::Mandates::MandateAddress.new_from_hash(hash['mandateAddress'])
          end
          if hash.has_key?('personalInformation')
            if !(hash['personalInformation'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['personalInformation']]
            end
            @personal_information = Ingenico::Connect::SDK::Domain::Mandates::MandatePersonalInformation.new_from_hash(hash['personalInformation'])
          end
        end
      end
    end
  end
end
