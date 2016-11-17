#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_CompanyInformation CompanyInformation}
      class CompanyInformation < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :name

        def to_h
          hash = super
          add_to_hash(hash, 'name', @name)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('name')
            @name = hash['name']
          end
        end
      end
    end
  end
end
