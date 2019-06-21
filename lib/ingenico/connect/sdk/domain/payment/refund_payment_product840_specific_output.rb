#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/refund_payment_product840_customer_account'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Ingenico::Connect::SDK::Domain::Payment::RefundPaymentProduct840CustomerAccount] customer_account
      class RefundPaymentProduct840SpecificOutput < Ingenico::Connect::SDK::DataObject

        attr_accessor :customer_account

        # @return (Hash)
        def to_h
          hash = super
          hash['customerAccount'] = @customer_account.to_h unless @customer_account.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'customerAccount'
            raise TypeError, "value '%s' is not a Hash" % [hash['customerAccount']] unless hash['customerAccount'].is_a? Hash
            @customer_account = Ingenico::Connect::SDK::Domain::Payment::RefundPaymentProduct840CustomerAccount.new_from_hash(hash['customerAccount'])
          end
        end
      end
    end
  end
end
