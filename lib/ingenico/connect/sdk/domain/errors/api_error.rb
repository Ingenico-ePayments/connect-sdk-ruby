#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Errors

      class APIError < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :category

        # String
        attr_accessor :code

        # Integer
        attr_accessor :http_status_code

        # String
        attr_accessor :id

        # String
        attr_accessor :message

        # String
        attr_accessor :property_name

        # String
        attr_accessor :request_id

        def to_h
          hash = super
          add_to_hash(hash, 'category', @category)
          add_to_hash(hash, 'code', @code)
          add_to_hash(hash, 'httpStatusCode', @http_status_code)
          add_to_hash(hash, 'id', @id)
          add_to_hash(hash, 'message', @message)
          add_to_hash(hash, 'propertyName', @property_name)
          add_to_hash(hash, 'requestId', @request_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('category')
            @category = hash['category']
          end
          if hash.has_key?('code')
            @code = hash['code']
          end
          if hash.has_key?('httpStatusCode')
            @http_status_code = hash['httpStatusCode']
          end
          if hash.has_key?('id')
            @id = hash['id']
          end
          if hash.has_key?('message')
            @message = hash['message']
          end
          if hash.has_key?('propertyName')
            @property_name = hash['propertyName']
          end
          if hash.has_key?('requestId')
            @request_id = hash['requestId']
          end
        end
      end
    end
  end
end
