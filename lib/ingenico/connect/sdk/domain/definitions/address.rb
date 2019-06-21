#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [String] additional_info
      # @attr [String] city
      # @attr [String] country_code
      # @attr [String] house_number
      # @attr [String] state
      # @attr [String] state_code
      # @attr [String] street
      # @attr [String] zip
      class Address < Ingenico::Connect::SDK::DataObject

        attr_accessor :additional_info

        attr_accessor :city

        attr_accessor :country_code

        attr_accessor :house_number

        attr_accessor :state

        attr_accessor :state_code

        attr_accessor :street

        attr_accessor :zip

        # @return (Hash)
        def to_h
          hash = super
          hash['additionalInfo'] = @additional_info unless @additional_info.nil?
          hash['city'] = @city unless @city.nil?
          hash['countryCode'] = @country_code unless @country_code.nil?
          hash['houseNumber'] = @house_number unless @house_number.nil?
          hash['state'] = @state unless @state.nil?
          hash['stateCode'] = @state_code unless @state_code.nil?
          hash['street'] = @street unless @street.nil?
          hash['zip'] = @zip unless @zip.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'additionalInfo'
            @additional_info = hash['additionalInfo']
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
          if hash.has_key? 'state'
            @state = hash['state']
          end
          if hash.has_key? 'stateCode'
            @state_code = hash['stateCode']
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
