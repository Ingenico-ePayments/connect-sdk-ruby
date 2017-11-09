#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/address'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class Seller < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::Address}
        attr_accessor :address

        # String
        attr_accessor :channel_code

        # String
        attr_accessor :description

        # String
        attr_accessor :geocode

        # String
        attr_accessor :id

        # String
        attr_accessor :invoice_number

        # String
        attr_accessor :mcc

        # String
        attr_accessor :name

        # String
        attr_accessor :type

        def to_h
          hash = super
          add_to_hash(hash, 'address', @address)
          add_to_hash(hash, 'channelCode', @channel_code)
          add_to_hash(hash, 'description', @description)
          add_to_hash(hash, 'geocode', @geocode)
          add_to_hash(hash, 'id', @id)
          add_to_hash(hash, 'invoiceNumber', @invoice_number)
          add_to_hash(hash, 'mcc', @mcc)
          add_to_hash(hash, 'name', @name)
          add_to_hash(hash, 'type', @type)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('address')
            if !(hash['address'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['address']]
            end
            @address = Ingenico::Connect::SDK::Domain::Definitions::Address.new_from_hash(hash['address'])
          end
          if hash.has_key?('channelCode')
            @channel_code = hash['channelCode']
          end
          if hash.has_key?('description')
            @description = hash['description']
          end
          if hash.has_key?('geocode')
            @geocode = hash['geocode']
          end
          if hash.has_key?('id')
            @id = hash['id']
          end
          if hash.has_key?('invoiceNumber')
            @invoice_number = hash['invoiceNumber']
          end
          if hash.has_key?('mcc')
            @mcc = hash['mcc']
          end
          if hash.has_key?('name')
            @name = hash['name']
          end
          if hash.has_key?('type')
            @type = hash['type']
          end
        end
      end
    end
  end
end
