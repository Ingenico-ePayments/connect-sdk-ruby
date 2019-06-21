#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Services

      # @attr [String] bic
      # @attr [String] category
      # @attr [String] chips_uid
      # @attr [String] extra_info
      # @attr [String] po_box_country
      # @attr [String] po_box_location
      # @attr [String] po_box_number
      # @attr [String] po_box_zip
      # @attr [String] routing_bic
      # @attr [String] services
      class Swift < Ingenico::Connect::SDK::DataObject

        attr_accessor :bic

        attr_accessor :category

        attr_accessor :chips_uid

        attr_accessor :extra_info

        attr_accessor :po_box_country

        attr_accessor :po_box_location

        attr_accessor :po_box_number

        attr_accessor :po_box_zip

        attr_accessor :routing_bic

        attr_accessor :services

        # @return (Hash)
        def to_h
          hash = super
          hash['bic'] = @bic unless @bic.nil?
          hash['category'] = @category unless @category.nil?
          hash['chipsUID'] = @chips_uid unless @chips_uid.nil?
          hash['extraInfo'] = @extra_info unless @extra_info.nil?
          hash['poBoxCountry'] = @po_box_country unless @po_box_country.nil?
          hash['poBoxLocation'] = @po_box_location unless @po_box_location.nil?
          hash['poBoxNumber'] = @po_box_number unless @po_box_number.nil?
          hash['poBoxZip'] = @po_box_zip unless @po_box_zip.nil?
          hash['routingBic'] = @routing_bic unless @routing_bic.nil?
          hash['services'] = @services unless @services.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'bic'
            @bic = hash['bic']
          end
          if hash.has_key? 'category'
            @category = hash['category']
          end
          if hash.has_key? 'chipsUID'
            @chips_uid = hash['chipsUID']
          end
          if hash.has_key? 'extraInfo'
            @extra_info = hash['extraInfo']
          end
          if hash.has_key? 'poBoxCountry'
            @po_box_country = hash['poBoxCountry']
          end
          if hash.has_key? 'poBoxLocation'
            @po_box_location = hash['poBoxLocation']
          end
          if hash.has_key? 'poBoxNumber'
            @po_box_number = hash['poBoxNumber']
          end
          if hash.has_key? 'poBoxZip'
            @po_box_zip = hash['poBoxZip']
          end
          if hash.has_key? 'routingBic'
            @routing_bic = hash['routingBic']
          end
          if hash.has_key? 'services'
            @services = hash['services']
          end
        end
      end
    end
  end
end
