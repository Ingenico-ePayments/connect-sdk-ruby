#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/payment'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Ingenico::Connect::SDK::Domain::Payment::Payment] payment
      class CancelApprovalPaymentResponse < Ingenico::Connect::SDK::DataObject

        attr_accessor :payment

        # @return (Hash)
        def to_h
          hash = super
          hash['payment'] = @payment.to_h unless @payment.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'payment'
            raise TypeError, "value '%s' is not a Hash" % [hash['payment']] unless hash['payment'].is_a? Hash
            @payment = Ingenico::Connect::SDK::Domain::Payment::Payment.new_from_hash(hash['payment'])
          end
        end
      end
    end
  end
end
