#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Capture

      # @attr [Integer] status_code
      class CaptureStatusOutput < Ingenico::Connect::SDK::DataObject

        attr_accessor :status_code

        # @return (Hash)
        def to_h
          hash = super
          hash['statusCode'] = @status_code unless @status_code.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'statusCode'
            @status_code = hash['statusCode']
          end
        end
      end
    end
  end
end
