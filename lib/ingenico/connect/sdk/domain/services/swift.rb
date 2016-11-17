#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Services

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_Swift Swift}
      class Swift < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :bic

        # String
        attr_accessor :category

        # String
        attr_accessor :chips_uid

        # String
        attr_accessor :extra_info

        # String
        attr_accessor :po_box_country

        # String
        attr_accessor :po_box_location

        # String
        attr_accessor :po_box_number

        # String
        attr_accessor :po_box_zip

        # String
        attr_accessor :routing_bic

        # String
        attr_accessor :services

        def to_h
          hash = super
          add_to_hash(hash, 'bic', @bic)
          add_to_hash(hash, 'category', @category)
          add_to_hash(hash, 'chipsUID', @chips_uid)
          add_to_hash(hash, 'extraInfo', @extra_info)
          add_to_hash(hash, 'poBoxCountry', @po_box_country)
          add_to_hash(hash, 'poBoxLocation', @po_box_location)
          add_to_hash(hash, 'poBoxNumber', @po_box_number)
          add_to_hash(hash, 'poBoxZip', @po_box_zip)
          add_to_hash(hash, 'routingBic', @routing_bic)
          add_to_hash(hash, 'services', @services)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('bic')
            @bic = hash['bic']
          end
          if hash.has_key?('category')
            @category = hash['category']
          end
          if hash.has_key?('chipsUID')
            @chips_uid = hash['chipsUID']
          end
          if hash.has_key?('extraInfo')
            @extra_info = hash['extraInfo']
          end
          if hash.has_key?('poBoxCountry')
            @po_box_country = hash['poBoxCountry']
          end
          if hash.has_key?('poBoxLocation')
            @po_box_location = hash['poBoxLocation']
          end
          if hash.has_key?('poBoxNumber')
            @po_box_number = hash['poBoxNumber']
          end
          if hash.has_key?('poBoxZip')
            @po_box_zip = hash['poBoxZip']
          end
          if hash.has_key?('routingBic')
            @routing_bic = hash['routingBic']
          end
          if hash.has_key?('services')
            @services = hash['services']
          end
        end
      end
    end
  end
end
