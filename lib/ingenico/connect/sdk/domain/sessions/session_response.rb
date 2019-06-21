#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Sessions

      # @attr [String] asset_url
      # @attr [String] client_api_url
      # @attr [String] client_session_id
      # @attr [String] customer_id
      # @attr [Array<String>] invalid_tokens
      # @attr [String] region
      class SessionResponse < Ingenico::Connect::SDK::DataObject

        attr_accessor :asset_url

        attr_accessor :client_api_url

        attr_accessor :client_session_id

        attr_accessor :customer_id

        attr_accessor :invalid_tokens

        attr_accessor :region

        # @return (Hash)
        def to_h
          hash = super
          hash['assetUrl'] = @asset_url unless @asset_url.nil?
          hash['clientApiUrl'] = @client_api_url unless @client_api_url.nil?
          hash['clientSessionId'] = @client_session_id unless @client_session_id.nil?
          hash['customerId'] = @customer_id unless @customer_id.nil?
          hash['invalidTokens'] = @invalid_tokens unless @invalid_tokens.nil?
          hash['region'] = @region unless @region.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'assetUrl'
            @asset_url = hash['assetUrl']
          end
          if hash.has_key? 'clientApiUrl'
            @client_api_url = hash['clientApiUrl']
          end
          if hash.has_key? 'clientSessionId'
            @client_session_id = hash['clientSessionId']
          end
          if hash.has_key? 'customerId'
            @customer_id = hash['customerId']
          end
          if hash.has_key? 'invalidTokens'
            raise TypeError, "value '%s' is not an Array" % [hash['invalidTokens']] unless hash['invalidTokens'].is_a? Array
            @invalid_tokens = []
            hash['invalidTokens'].each do |e|
              @invalid_tokens << e
            end
          end
          if hash.has_key? 'region'
            @region = hash['region']
          end
        end
      end
    end
  end
end
