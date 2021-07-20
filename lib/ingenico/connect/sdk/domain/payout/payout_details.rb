#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/payout/payout_customer'
require 'ingenico/connect/sdk/domain/payout/payout_references'

module Ingenico::Connect::SDK
  module Domain
    module Payout

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney] amount_of_money
      # @attr [Ingenico::Connect::SDK::Domain::Payout::PayoutCustomer] customer
      # @attr [Ingenico::Connect::SDK::Domain::Payout::PayoutReferences] references
      class PayoutDetails < Ingenico::Connect::SDK::DataObject

        attr_accessor :amount_of_money

        attr_accessor :customer

        attr_accessor :references

        # @return (Hash)
        def to_h
          hash = super
          hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
          hash['customer'] = @customer.to_h unless @customer.nil?
          hash['references'] = @references.to_h unless @references.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'amountOfMoney'
            raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
            @amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
          end
          if hash.has_key? 'customer'
            raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
            @customer = Ingenico::Connect::SDK::Domain::Payout::PayoutCustomer.new_from_hash(hash['customer'])
          end
          if hash.has_key? 'references'
            raise TypeError, "value '%s' is not a Hash" % [hash['references']] unless hash['references'].is_a? Hash
            @references = Ingenico::Connect::SDK::Domain::Payout::PayoutReferences.new_from_hash(hash['references'])
          end
        end
      end
    end
  end
end
