#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Capture

      class CaptureStatusOutput < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :status_code

        def to_h
          hash = super
          add_to_hash(hash, 'statusCode', @status_code)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('statusCode')
            @status_code = hash['statusCode']
          end
        end
      end
    end
  end
end
