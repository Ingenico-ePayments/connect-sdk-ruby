#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_RefundPaymentProduct840CustomerAccount RefundPaymentProduct840CustomerAccount}
      class RefundPaymentProduct840CustomerAccount < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :customer_account_status

        # String
        attr_accessor :customer_address_status

        # String
        attr_accessor :payer_id

        def to_h
          hash = super
          add_to_hash(hash, 'customerAccountStatus', @customer_account_status)
          add_to_hash(hash, 'customerAddressStatus', @customer_address_status)
          add_to_hash(hash, 'payerId', @payer_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('customerAccountStatus')
            @customer_account_status = hash['customerAccountStatus']
          end
          if hash.has_key?('customerAddressStatus')
            @customer_address_status = hash['customerAddressStatus']
          end
          if hash.has_key?('payerId')
            @payer_id = hash['payerId']
          end
        end
      end
    end
  end
end
