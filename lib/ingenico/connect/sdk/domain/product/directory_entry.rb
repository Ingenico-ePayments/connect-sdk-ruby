#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_DirectoryEntry DirectoryEntry}
      class DirectoryEntry < Ingenico::Connect::SDK::DataObject

        # Array of String
        attr_accessor :country_names

        # String
        attr_accessor :issuer_id

        # String
        attr_accessor :issuer_list

        # String
        attr_accessor :issuer_name

        def to_h
          hash = super
          add_to_hash(hash, 'countryNames', @country_names)
          add_to_hash(hash, 'issuerId', @issuer_id)
          add_to_hash(hash, 'issuerList', @issuer_list)
          add_to_hash(hash, 'issuerName', @issuer_name)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('countryNames')
            if !(hash['countryNames'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['countryNames']]
            end
            @country_names = []
            hash['countryNames'].each do |e|
              @country_names << e
            end
          end
          if hash.has_key?('issuerId')
            @issuer_id = hash['issuerId']
          end
          if hash.has_key?('issuerList')
            @issuer_list = hash['issuerList']
          end
          if hash.has_key?('issuerName')
            @issuer_name = hash['issuerName']
          end
        end
      end
    end
  end
end
