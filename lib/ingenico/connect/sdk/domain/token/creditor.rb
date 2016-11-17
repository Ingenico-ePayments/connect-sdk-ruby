#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Token

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_Creditor Creditor}
      class Creditor < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :additional_address_info

        # String
        attr_accessor :city

        # String
        attr_accessor :country_code

        # String
        attr_accessor :house_number

        # String
        attr_accessor :iban

        # String
        attr_accessor :id

        # String
        attr_accessor :name

        # String
        attr_accessor :reference_party

        # String
        attr_accessor :reference_party_id

        # String
        attr_accessor :street

        # String
        attr_accessor :zip

        def to_h
          hash = super
          add_to_hash(hash, 'additionalAddressInfo', @additional_address_info)
          add_to_hash(hash, 'city', @city)
          add_to_hash(hash, 'countryCode', @country_code)
          add_to_hash(hash, 'houseNumber', @house_number)
          add_to_hash(hash, 'iban', @iban)
          add_to_hash(hash, 'id', @id)
          add_to_hash(hash, 'name', @name)
          add_to_hash(hash, 'referenceParty', @reference_party)
          add_to_hash(hash, 'referencePartyId', @reference_party_id)
          add_to_hash(hash, 'street', @street)
          add_to_hash(hash, 'zip', @zip)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('additionalAddressInfo')
            @additional_address_info = hash['additionalAddressInfo']
          end
          if hash.has_key?('city')
            @city = hash['city']
          end
          if hash.has_key?('countryCode')
            @country_code = hash['countryCode']
          end
          if hash.has_key?('houseNumber')
            @house_number = hash['houseNumber']
          end
          if hash.has_key?('iban')
            @iban = hash['iban']
          end
          if hash.has_key?('id')
            @id = hash['id']
          end
          if hash.has_key?('name')
            @name = hash['name']
          end
          if hash.has_key?('referenceParty')
            @reference_party = hash['referenceParty']
          end
          if hash.has_key?('referencePartyId')
            @reference_party_id = hash['referencePartyId']
          end
          if hash.has_key?('street')
            @street = hash['street']
          end
          if hash.has_key?('zip')
            @zip = hash['zip']
          end
        end
      end
    end
  end
end
