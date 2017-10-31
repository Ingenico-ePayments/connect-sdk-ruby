#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/key_value_pair'

module Ingenico::Connect::SDK
  module Domain
    module Product

      class GetCustomerDetailsRequest < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :country_code

        # Array of {Ingenico::Connect::SDK::Domain::Definitions::KeyValuePair}
        attr_accessor :values

        def to_h
          hash = super
          add_to_hash(hash, 'countryCode', @country_code)
          add_to_hash(hash, 'values', @values)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('countryCode')
            @country_code = hash['countryCode']
          end
          if hash.has_key?('values')
            if !(hash['values'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['values']]
            end
            @values = []
            hash['values'].each do |e|
              @values << Ingenico::Connect::SDK::Domain::Definitions::KeyValuePair.new_from_hash(e)
            end
          end
        end
      end
    end
  end
end
