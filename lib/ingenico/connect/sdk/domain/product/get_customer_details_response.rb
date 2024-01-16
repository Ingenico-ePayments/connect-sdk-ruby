#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Product
          # @attr [String] city
          # @attr [String] country
          # @attr [String] email_address
          # @attr [String] first_name
          # @attr [String] fiscal_number
          # @attr [String] language_code
          # @attr [String] phone_number
          # @attr [String] street
          # @attr [String] surname
          # @attr [String] zip
          class GetCustomerDetailsResponse < Ingenico::Connect::SDK::DataObject

            attr_accessor :city

            attr_accessor :country

            attr_accessor :email_address

            attr_accessor :first_name

            attr_accessor :fiscal_number

            attr_accessor :language_code

            attr_accessor :phone_number

            attr_accessor :street

            attr_accessor :surname

            attr_accessor :zip

            # @return (Hash)
            def to_h
              hash = super
              hash['city'] = @city unless @city.nil?
              hash['country'] = @country unless @country.nil?
              hash['emailAddress'] = @email_address unless @email_address.nil?
              hash['firstName'] = @first_name unless @first_name.nil?
              hash['fiscalNumber'] = @fiscal_number unless @fiscal_number.nil?
              hash['languageCode'] = @language_code unless @language_code.nil?
              hash['phoneNumber'] = @phone_number unless @phone_number.nil?
              hash['street'] = @street unless @street.nil?
              hash['surname'] = @surname unless @surname.nil?
              hash['zip'] = @zip unless @zip.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'city'
                @city = hash['city']
              end
              if hash.has_key? 'country'
                @country = hash['country']
              end
              if hash.has_key? 'emailAddress'
                @email_address = hash['emailAddress']
              end
              if hash.has_key? 'firstName'
                @first_name = hash['firstName']
              end
              if hash.has_key? 'fiscalNumber'
                @fiscal_number = hash['fiscalNumber']
              end
              if hash.has_key? 'languageCode'
                @language_code = hash['languageCode']
              end
              if hash.has_key? 'phoneNumber'
                @phone_number = hash['phoneNumber']
              end
              if hash.has_key? 'street'
                @street = hash['street']
              end
              if hash.has_key? 'surname'
                @surname = hash['surname']
              end
              if hash.has_key? 'zip'
                @zip = hash['zip']
              end
            end
          end
        end
      end
    end
  end
end
