#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module File
          # @attr [String] file_name
          # @attr [String] file_size
          # @attr [String] file_type
          # @attr [String] id
          class HostedFile < Ingenico::Connect::SDK::DataObject

            attr_accessor :file_name

            attr_accessor :file_size

            attr_accessor :file_type

            attr_accessor :id

            # @return (Hash)
            def to_h
              hash = super
              hash['fileName'] = @file_name unless @file_name.nil?
              hash['fileSize'] = @file_size unless @file_size.nil?
              hash['fileType'] = @file_type unless @file_type.nil?
              hash['id'] = @id unless @id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'fileName'
                @file_name = hash['fileName']
              end
              if hash.has_key? 'fileSize'
                @file_size = hash['fileSize']
              end
              if hash.has_key? 'fileType'
                @file_type = hash['fileType']
              end
              if hash.has_key? 'id'
                @id = hash['id']
              end
            end
          end
        end
      end
    end
  end
end
