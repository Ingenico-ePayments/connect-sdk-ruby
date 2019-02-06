#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module File

      class HostedFile < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :file_name

        # String
        attr_accessor :file_size

        # String
        attr_accessor :file_type

        # String
        attr_accessor :id

        def to_h
          hash = super
          add_to_hash(hash, 'fileName', @file_name)
          add_to_hash(hash, 'fileSize', @file_size)
          add_to_hash(hash, 'fileType', @file_type)
          add_to_hash(hash, 'id', @id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('fileName')
            @file_name = hash['fileName']
          end
          if hash.has_key?('fileSize')
            @file_size = hash['fileSize']
          end
          if hash.has_key?('fileType')
            @file_type = hash['fileType']
          end
          if hash.has_key?('id')
            @id = hash['id']
          end
        end
      end
    end
  end
end
