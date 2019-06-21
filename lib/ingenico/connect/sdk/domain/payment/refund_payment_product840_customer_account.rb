#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] customer_account_status
      # @attr [String] customer_address_status
      # @attr [String] payer_id
      class RefundPaymentProduct840CustomerAccount < Ingenico::Connect::SDK::DataObject

        attr_accessor :customer_account_status

        attr_accessor :customer_address_status

        attr_accessor :payer_id

        # @return (Hash)
        def to_h
          hash = super
          hash['customerAccountStatus'] = @customer_account_status unless @customer_account_status.nil?
          hash['customerAddressStatus'] = @customer_address_status unless @customer_address_status.nil?
          hash['payerId'] = @payer_id unless @payer_id.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'customerAccountStatus'
            @customer_account_status = hash['customerAccountStatus']
          end
          if hash.has_key? 'customerAddressStatus'
            @customer_address_status = hash['customerAddressStatus']
          end
          if hash.has_key? 'payerId'
            @payer_id = hash['payerId']
          end
        end
      end
    end
  end
end
