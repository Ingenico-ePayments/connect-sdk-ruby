#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/directory_entry'

module Ingenico::Connect::SDK
  module Domain
    module Product

      class Directory < Ingenico::Connect::SDK::DataObject

        # Array of {Ingenico::Connect::SDK::Domain::Product::DirectoryEntry}
        attr_accessor :entries

        def to_h
          hash = super
          add_to_hash(hash, 'entries', @entries)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('entries')
            if !(hash['entries'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['entries']]
            end
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
