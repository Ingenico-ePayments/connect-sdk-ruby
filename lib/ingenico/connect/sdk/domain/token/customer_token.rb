#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/definitions/customer_base'
require 'ingenico/connect/sdk/domain/token/personal_information_token'

module Ingenico::Connect::SDK
  module Domain
    module Token

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::Address] billing_address
      # @attr [Ingenico::Connect::SDK::Domain::Token::PersonalInformationToken] personal_information
      class CustomerToken < Ingenico::Connect::SDK::Domain::Definitions::CustomerBase

        attr_accessor :billing_address

        attr_accessor :personal_information

        # @return (Hash)
        def to_h
          hash = super
          hash['billingAddress'] = @billing_address.to_h unless @billing_address.nil?
          hash['personalInformation'] = @personal_information.to_h unless @personal_information.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'billingAddress'
            raise TypeError, "value '%s' is not a Hash" % [hash['billingAddress']] unless hash['billingAddress'].is_a? Hash
            @billing_address = Ingenico::Connect::SDK::Domain::Definitions::Address.new_from_hash(hash['billingAddress'])
          end
          if hash.has_key? 'personalInformation'
            raise TypeError, "value '%s' is not a Hash" % [hash['personalInformation']] unless hash['personalInformation'].is_a? Hash
            @personal_information = Ingenico::Connect::SDK::Domain::Token::PersonalInformationToken.new_from_hash(hash['personalInformation'])
          end
        end
      end
    end
  end
end
