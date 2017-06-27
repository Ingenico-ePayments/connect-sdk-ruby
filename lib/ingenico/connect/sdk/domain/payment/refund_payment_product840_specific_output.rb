#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/refund_payment_product840_customer_account'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class RefundPaymentProduct840SpecificOutput < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Payment::RefundPaymentProduct840CustomerAccount}
        attr_accessor :customer_account

        def to_h
          hash = super
          add_to_hash(hash, 'customerAccount', @customer_account)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('customerAccount')
            if !(hash['customerAccount'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['customerAccount']]
            end
            @customer_account = Ingenico::Connect::SDK::Domain::Payment::RefundPaymentProduct840CustomerAccount.new_from_hash(hash['customerAccount'])
          end
        end
      end
    end
  end
end
