#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/payment/trustly_bank_account'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::Address] billing_address
          # @attr [Ingenico::Connect::SDK::Domain::Payment::TrustlyBankAccount] customer_account
          class PaymentProduct806SpecificOutput < Ingenico::Connect::SDK::DataObject

            attr_accessor :billing_address

            attr_accessor :customer_account

            # @return (Hash)
            def to_h
              hash = super
              hash['billingAddress'] = @billing_address.to_h unless @billing_address.nil?
              hash['customerAccount'] = @customer_account.to_h unless @customer_account.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'billingAddress'
                raise TypeError, "value '%s' is not a Hash" % [hash['billingAddress']] unless hash['billingAddress'].is_a? Hash
                @billing_address = Ingenico::Connect::SDK::Domain::Definitions::Address.new_from_hash(hash['billingAddress'])
              end
              if hash.has_key? 'customerAccount'
                raise TypeError, "value '%s' is not a Hash" % [hash['customerAccount']] unless hash['customerAccount'].is_a? Hash
                @customer_account = Ingenico::Connect::SDK::Domain::Payment::TrustlyBankAccount.new_from_hash(hash['customerAccount'])
              end
            end
          end
        end
      end
    end
  end
end
