#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/payment/afr_name'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] account_number
      # @attr [String] account_number_type
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::Address] address
      # @attr [String] date_of_birth
      # @attr [Ingenico::Connect::SDK::Domain::Payment::AfrName] name
      # @attr [String] partial_pan
      class AccountFundingRecipient < Ingenico::Connect::SDK::DataObject

        attr_accessor :account_number

        attr_accessor :account_number_type

        attr_accessor :address

        attr_accessor :date_of_birth

        attr_accessor :name

        attr_accessor :partial_pan

        # @return (Hash)
        def to_h
          hash = super
          hash['accountNumber'] = @account_number unless @account_number.nil?
          hash['accountNumberType'] = @account_number_type unless @account_number_type.nil?
          hash['address'] = @address.to_h unless @address.nil?
          hash['dateOfBirth'] = @date_of_birth unless @date_of_birth.nil?
          hash['name'] = @name.to_h unless @name.nil?
          hash['partialPan'] = @partial_pan unless @partial_pan.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'accountNumber'
            @account_number = hash['accountNumber']
          end
          if hash.has_key? 'accountNumberType'
            @account_number_type = hash['accountNumberType']
          end
          if hash.has_key? 'address'
            raise TypeError, "value '%s' is not a Hash" % [hash['address']] unless hash['address'].is_a? Hash
            @address = Ingenico::Connect::SDK::Domain::Definitions::Address.new_from_hash(hash['address'])
          end
          if hash.has_key? 'dateOfBirth'
            @date_of_birth = hash['dateOfBirth']
          end
          if hash.has_key? 'name'
            raise TypeError, "value '%s' is not a Hash" % [hash['name']] unless hash['name'].is_a? Hash
            @name = Ingenico::Connect::SDK::Domain::Payment::AfrName.new_from_hash(hash['name'])
          end
          if hash.has_key? 'partialPan'
            @partial_pan = hash['partialPan']
          end
        end
      end
    end
  end
end
