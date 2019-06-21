#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/key_value_pair'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # @attr [String] country_code
      # @attr [Array<Ingenico::Connect::SDK::Domain::Definitions::KeyValuePair>] values
      class GetCustomerDetailsRequest < Ingenico::Connect::SDK::DataObject

        attr_accessor :country_code

        attr_accessor :values

        # @return (Hash)
        def to_h
          hash = super
          hash['countryCode'] = @country_code unless @country_code.nil?
          hash['values'] = @values.collect{|val| val.to_h} unless @values.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'countryCode'
            @country_code = hash['countryCode']
          end
          if hash.has_key? 'values'
            raise TypeError, "value '%s' is not an Array" % [hash['values']] unless hash['values'].is_a? Array
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
