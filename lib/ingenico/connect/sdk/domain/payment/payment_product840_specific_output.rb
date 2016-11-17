#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/payment/payment_product840_customer_account'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PaymentProduct840SpecificOutput PaymentProduct840SpecificOutput}
      class PaymentProduct840SpecificOutput < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Payment::PaymentProduct840CustomerAccount}
        attr_accessor :customer_account

        # {Ingenico::Connect::SDK::Domain::Definitions::Address}
        attr_accessor :customer_address

        def to_h
          hash = super
          add_to_hash(hash, 'customerAccount', @customer_account)
          add_to_hash(hash, 'customerAddress', @customer_address)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('customerAccount')
            if !(hash['customerAccount'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['customerAccount']]
            end
            @customer_account = Ingenico::Connect::SDK::Domain::Payment::PaymentProduct840CustomerAccount.new_from_hash(hash['customerAccount'])
          end
          if hash.has_key?('customerAddress')
            if !(hash['customerAddress'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['customerAddress']]
            end
            @customer_address = Ingenico::Connect::SDK::Domain::Definitions::Address.new_from_hash(hash['customerAddress'])
          end
        end
      end
    end
  end
end
