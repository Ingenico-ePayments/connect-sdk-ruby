#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Token
          # @attr [String] additional_address_info
          # @attr [String] city
          # @attr [String] country_code
          # @attr [String] house_number
          # @attr [String] iban
          # @attr [String] id
          # @attr [String] name
          # @attr [String] reference_party
          # @attr [String] reference_party_id
          # @attr [String] street
          # @attr [String] zip
          class Creditor < Ingenico::Connect::SDK::DataObject

            attr_accessor :additional_address_info

            attr_accessor :city

            attr_accessor :country_code

            attr_accessor :house_number

            attr_accessor :iban

            attr_accessor :id

            attr_accessor :name

            attr_accessor :reference_party

            attr_accessor :reference_party_id

            attr_accessor :street

            attr_accessor :zip

            # @return (Hash)
            def to_h
              hash = super
              hash['additionalAddressInfo'] = @additional_address_info unless @additional_address_info.nil?
              hash['city'] = @city unless @city.nil?
              hash['countryCode'] = @country_code unless @country_code.nil?
              hash['houseNumber'] = @house_number unless @house_number.nil?
              hash['iban'] = @iban unless @iban.nil?
              hash['id'] = @id unless @id.nil?
              hash['name'] = @name unless @name.nil?
              hash['referenceParty'] = @reference_party unless @reference_party.nil?
              hash['referencePartyId'] = @reference_party_id unless @reference_party_id.nil?
              hash['street'] = @street unless @street.nil?
              hash['zip'] = @zip unless @zip.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'additionalAddressInfo'
                @additional_address_info = hash['additionalAddressInfo']
              end
              if hash.has_key? 'city'
                @city = hash['city']
              end
              if hash.has_key? 'countryCode'
                @country_code = hash['countryCode']
              end
              if hash.has_key? 'houseNumber'
                @house_number = hash['houseNumber']
              end
              if hash.has_key? 'iban'
                @iban = hash['iban']
              end
              if hash.has_key? 'id'
                @id = hash['id']
              end
              if hash.has_key? 'name'
                @name = hash['name']
              end
              if hash.has_key? 'referenceParty'
                @reference_party = hash['referenceParty']
              end
              if hash.has_key? 'referencePartyId'
                @reference_party_id = hash['referencePartyId']
              end
              if hash.has_key? 'street'
                @street = hash['street']
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
