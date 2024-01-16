#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Token
          # @attr [true/false] is_new_token
          # @attr [String] original_payment_id
          # @attr [String] token
          class CreateTokenResponse < Ingenico::Connect::SDK::DataObject

            attr_accessor :is_new_token

            attr_accessor :original_payment_id

            attr_accessor :token

            # @return (Hash)
            def to_h
              hash = super
              hash['isNewToken'] = @is_new_token unless @is_new_token.nil?
              hash['originalPaymentId'] = @original_payment_id unless @original_payment_id.nil?
              hash['token'] = @token unless @token.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'isNewToken'
                @is_new_token = hash['isNewToken']
              end
              if hash.has_key? 'originalPaymentId'
                @original_payment_id = hash['originalPaymentId']
              end
              if hash.has_key? 'token'
                @token = hash['token']
              end
            end
          end
        end
      end
    end
  end
end
