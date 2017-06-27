#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/token/abstract_token'
require 'ingenico/connect/sdk/domain/token/customer_token'
require 'ingenico/connect/sdk/domain/token/token_e_wallet_data'

module Ingenico::Connect::SDK
  module Domain
    module Token

      class TokenEWallet < Ingenico::Connect::SDK::Domain::Token::AbstractToken

        # {Ingenico::Connect::SDK::Domain::Token::CustomerToken}
        attr_accessor :customer

        # {Ingenico::Connect::SDK::Domain::Token::TokenEWalletData}
        attr_accessor :data

        def to_h
          hash = super
          add_to_hash(hash, 'customer', @customer)
          add_to_hash(hash, 'data', @data)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('customer')
            if !(hash['customer'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['customer']]
            end
            @customer = Ingenico::Connect::SDK::Domain::Token::CustomerToken.new_from_hash(hash['customer'])
          end
          if hash.has_key?('data')
            if !(hash['data'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['data']]
            end
            @data = Ingenico::Connect::SDK::Domain::Token::TokenEWalletData.new_from_hash(hash['data'])
          end
        end
      end
    end
  end
end
