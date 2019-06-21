#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] installment_id
      class EInvoicePaymentProduct9000SpecificOutput < Ingenico::Connect::SDK::DataObject

        attr_accessor :installment_id

        # @return (Hash)
        def to_h
          hash = super
          hash['installmentId'] = @installment_id unless @installment_id.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'installmentId'
            @installment_id = hash['installmentId']
          end
        end
      end
    end
  end
end
