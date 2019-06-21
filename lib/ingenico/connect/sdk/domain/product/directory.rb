#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/directory_entry'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # @attr [Array<Ingenico::Connect::SDK::Domain::Product::DirectoryEntry>] entries
      class Directory < Ingenico::Connect::SDK::DataObject

        attr_accessor :entries

        # @return (Hash)
        def to_h
          hash = super
          hash['entries'] = @entries.collect{|val| val.to_h} unless @entries.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'entries'
            raise TypeError, "value '%s' is not an Array" % [hash['entries']] unless hash['entries'].is_a? Array
            @entries = []
            hash['entries'].each do |e|
              @entries << Ingenico::Connect::SDK::Domain::Product::DirectoryEntry.new_from_hash(e)
            end
          end
        end
      end
    end
  end
end
