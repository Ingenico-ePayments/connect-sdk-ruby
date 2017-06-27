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

      class CustomerToken < Ingenico::Connect::SDK::Domain::Definitions::CustomerBase

        # {Ingenico::Connect::SDK::Domain::Definitions::Address}
        attr_accessor :billing_address

        # {Ingenico::Connect::SDK::Domain::Token::PersonalInformationToken}
        attr_accessor :personal_information

        def to_h
          hash = super
          add_to_hash(hash, 'billingAddress', @billing_address)
          add_to_hash(hash, 'personalInformation', @personal_information)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('billingAddress')
            if !(hash['billingAddress'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['billingAddress']]
            end
            @billing_address = Ingenico::Connect::SDK::Domain::Definitions::Address.new_from_hash(hash['billingAddress'])
          end
          if hash.has_key?('personalInformation')
            if !(hash['personalInformation'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['personalInformation']]
            end
            @personal_information = Ingenico::Connect::SDK::Domain::Token::PersonalInformationToken.new_from_hash(hash['personalInformation'])
          end
        end
      end
    end
  end
end
