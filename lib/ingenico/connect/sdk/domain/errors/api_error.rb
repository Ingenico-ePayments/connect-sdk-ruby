#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Errors
          # @attr [String] category
          # @attr [String] code
          # @attr [Integer] http_status_code
          # @attr [String] id
          # @attr [String] message
          # @attr [String] property_name
          # @attr [String] request_id
          class APIError < Ingenico::Connect::SDK::DataObject

            attr_accessor :category

            attr_accessor :code

            attr_accessor :http_status_code

            attr_accessor :id

            attr_accessor :message

            attr_accessor :property_name

            attr_accessor :request_id

            # @return (Hash)
            def to_h
              hash = super
              hash['category'] = @category unless @category.nil?
              hash['code'] = @code unless @code.nil?
              hash['httpStatusCode'] = @http_status_code unless @http_status_code.nil?
              hash['id'] = @id unless @id.nil?
              hash['message'] = @message unless @message.nil?
              hash['propertyName'] = @property_name unless @property_name.nil?
              hash['requestId'] = @request_id unless @request_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'category'
                @category = hash['category']
              end
              if hash.has_key? 'code'
                @code = hash['code']
              end
              if hash.has_key? 'httpStatusCode'
                @http_status_code = hash['httpStatusCode']
              end
              if hash.has_key? 'id'
                @id = hash['id']
              end
              if hash.has_key? 'message'
                @message = hash['message']
              end
              if hash.has_key? 'propertyName'
                @property_name = hash['propertyName']
              end
              if hash.has_key? 'requestId'
                @request_id = hash['requestId']
              end
            end
          end
        end
      end
    end
  end
end
