#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      class GetCustomerDetailsResponse < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :city

        # String
        attr_accessor :country

        # String
        attr_accessor :email_address

        # String
        attr_accessor :first_name

        # String
        attr_accessor :fiscal_number

        # String
        attr_accessor :language_code

        # String
        attr_accessor :phone_number

        # String
        attr_accessor :street

        # String
        attr_accessor :surname

        # String
        attr_accessor :zip

        def to_h
          hash = super
          add_to_hash(hash, 'city', @city)
          add_to_hash(hash, 'country', @country)
          add_to_hash(hash, 'emailAddress', @email_address)
          add_to_hash(hash, 'firstName', @first_name)
          add_to_hash(hash, 'fiscalNumber', @fiscal_number)
          add_to_hash(hash, 'languageCode', @language_code)
          add_to_hash(hash, 'phoneNumber', @phone_number)
          add_to_hash(hash, 'street', @street)
          add_to_hash(hash, 'surname', @surname)
          add_to_hash(hash, 'zip', @zip)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('city')
            @city = hash['city']
          end
          if hash.has_key?('country')
            @country = hash['country']
          end
          if hash.has_key?('emailAddress')
            @email_address = hash['emailAddress']
          end
          if hash.has_key?('firstName')
            @first_name = hash['firstName']
          end
          if hash.has_key?('fiscalNumber')
            @fiscal_number = hash['fiscalNumber']
          end
          if hash.has_key?('languageCode')
            @language_code = hash['languageCode']
          end
          if hash.has_key?('phoneNumber')
            @phone_number = hash['phoneNumber']
          end
          if hash.has_key?('street')
            @street = hash['street']
          end
          if hash.has_key?('surname')
            @surname = hash['surname']
          end
          if hash.has_key?('zip')
            @zip = hash['zip']
          end
        end
      end
    end
  end
end
