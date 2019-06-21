#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/address'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::Address] address
      # @attr [String] channel_code
      # @attr [String] description
      # @attr [String] geocode
      # @attr [String] id
      # @attr [String] invoice_number
      # @attr [String] mcc
      # @attr [String] name
      # @attr [String] type
      class Seller < Ingenico::Connect::SDK::DataObject

        attr_accessor :address

        attr_accessor :channel_code

        attr_accessor :description

        attr_accessor :geocode

        attr_accessor :id

        attr_accessor :invoice_number

        attr_accessor :mcc

        attr_accessor :name

        attr_accessor :type

        # @return (Hash)
        def to_h
          hash = super
          hash['address'] = @address.to_h unless @address.nil?
          hash['channelCode'] = @channel_code unless @channel_code.nil?
          hash['description'] = @description unless @description.nil?
          hash['geocode'] = @geocode unless @geocode.nil?
          hash['id'] = @id unless @id.nil?
          hash['invoiceNumber'] = @invoice_number unless @invoice_number.nil?
          hash['mcc'] = @mcc unless @mcc.nil?
          hash['name'] = @name unless @name.nil?
          hash['type'] = @type unless @type.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'address'
            raise TypeError, "value '%s' is not a Hash" % [hash['address']] unless hash['address'].is_a? Hash
            @address = Ingenico::Connect::SDK::Domain::Definitions::Address.new_from_hash(hash['address'])
          end
          if hash.has_key? 'channelCode'
            @channel_code = hash['channelCode']
          end
          if hash.has_key? 'description'
            @description = hash['description']
          end
          if hash.has_key? 'geocode'
            @geocode = hash['geocode']
          end
          if hash.has_key? 'id'
            @id = hash['id']
          end
          if hash.has_key? 'invoiceNumber'
            @invoice_number = hash['invoiceNumber']
          end
          if hash.has_key? 'mcc'
            @mcc = hash['mcc']
          end
          if hash.has_key? 'name'
            @name = hash['name']
          end
          if hash.has_key? 'type'
            @type = hash['type']
          end
        end
      end
    end
  end
end
