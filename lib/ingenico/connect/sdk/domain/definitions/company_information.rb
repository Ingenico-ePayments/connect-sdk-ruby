#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class CompanyInformation < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :name

        # String
        attr_accessor :vat_number

        def to_h
          hash = super
          add_to_hash(hash, 'name', @name)
          add_to_hash(hash, 'vatNumber', @vat_number)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('name')
            @name = hash['name']
          end
          if hash.has_key?('vatNumber')
            @vat_number = hash['vatNumber']
          end
        end
      end
    end
  end
end
