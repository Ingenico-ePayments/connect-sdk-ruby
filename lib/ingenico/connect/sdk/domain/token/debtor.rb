#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Token

      # @attr [String] additional_address_info
      # @attr [String] city
      # @attr [String] country_code
      # @attr [String] first_name
      # @attr [String] house_number
      # @attr [String] state
      # @attr [String] state_code
      # @attr [String] street
      # @attr [String] surname
      # @attr [String] surname_prefix
      # @attr [String] zip
      class Debtor < Ingenico::Connect::SDK::DataObject

        attr_accessor :additional_address_info

        attr_accessor :city

        attr_accessor :country_code

        attr_accessor :first_name

        attr_accessor :house_number

        attr_accessor :state

        attr_accessor :state_code

        attr_accessor :street

        attr_accessor :surname

        attr_accessor :surname_prefix

        attr_accessor :zip

        # @return (Hash)
        def to_h
          hash = super
          hash['additionalAddressInfo'] = @additional_address_info unless @additional_address_info.nil?
          hash['city'] = @city unless @city.nil?
          hash['countryCode'] = @country_code unless @country_code.nil?
          hash['firstName'] = @first_name unless @first_name.nil?
          hash['houseNumber'] = @house_number unless @house_number.nil?
          hash['state'] = @state unless @state.nil?
          hash['stateCode'] = @state_code unless @state_code.nil?
          hash['street'] = @street unless @street.nil?
          hash['surname'] = @surname unless @surname.nil?
          hash['surnamePrefix'] = @surname_prefix unless @surname_prefix.nil?
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
          if hash.has_key? 'firstName'
            @first_name = hash['firstName']
          end
          if hash.has_key? 'houseNumber'
            @house_number = hash['houseNumber']
          end
          if hash.has_key? 'state'
            @state = hash['state']
          end
          if hash.has_key? 'stateCode'
            @state_code = hash['stateCode']
          end
          if hash.has_key? 'street'
            @street = hash['street']
          end
          if hash.has_key? 'surname'
            @surname = hash['surname']
          end
          if hash.has_key? 'surnamePrefix'
            @surname_prefix = hash['surnamePrefix']
          end
          if hash.has_key? 'zip'
            @zip = hash['zip']
          end
        end
      end
    end
  end
end
