#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/bank_account_iban'
require 'ingenico/connect/sdk/domain/mandates/mandate_address'
require 'ingenico/connect/sdk/domain/mandates/mandate_contact_details'
require 'ingenico/connect/sdk/domain/mandates/mandate_personal_information'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Mandates
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban] bank_account_iban
          # @attr [String] company_name
          # @attr [Ingenico::Connect::SDK::Domain::Mandates::MandateContactDetails] contact_details
          # @attr [Ingenico::Connect::SDK::Domain::Mandates::MandateAddress] mandate_address
          # @attr [Ingenico::Connect::SDK::Domain::Mandates::MandatePersonalInformation] personal_information
          class MandateCustomer < Ingenico::Connect::SDK::DataObject

            attr_accessor :bank_account_iban

            attr_accessor :company_name

            attr_accessor :contact_details

            attr_accessor :mandate_address

            attr_accessor :personal_information

            # @return (Hash)
            def to_h
              hash = super
              hash['bankAccountIban'] = @bank_account_iban.to_h unless @bank_account_iban.nil?
              hash['companyName'] = @company_name unless @company_name.nil?
              hash['contactDetails'] = @contact_details.to_h unless @contact_details.nil?
              hash['mandateAddress'] = @mandate_address.to_h unless @mandate_address.nil?
              hash['personalInformation'] = @personal_information.to_h unless @personal_information.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'bankAccountIban'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']] unless hash['bankAccountIban'].is_a? Hash
                @bank_account_iban = Ingenico::Connect::SDK::Domain::Definitions::BankAccountIban.new_from_hash(hash['bankAccountIban'])
              end
              if hash.has_key? 'companyName'
                @company_name = hash['companyName']
              end
              if hash.has_key? 'contactDetails'
                raise TypeError, "value '%s' is not a Hash" % [hash['contactDetails']] unless hash['contactDetails'].is_a? Hash
                @contact_details = Ingenico::Connect::SDK::Domain::Mandates::MandateContactDetails.new_from_hash(hash['contactDetails'])
              end
              if hash.has_key? 'mandateAddress'
                raise TypeError, "value '%s' is not a Hash" % [hash['mandateAddress']] unless hash['mandateAddress'].is_a? Hash
                @mandate_address = Ingenico::Connect::SDK::Domain::Mandates::MandateAddress.new_from_hash(hash['mandateAddress'])
              end
              if hash.has_key? 'personalInformation'
                raise TypeError, "value '%s' is not a Hash" % [hash['personalInformation']] unless hash['personalInformation'].is_a? Hash
                @personal_information = Ingenico::Connect::SDK::Domain::Mandates::MandatePersonalInformation.new_from_hash(hash['personalInformation'])
              end
            end
          end
        end
      end
    end
  end
end
