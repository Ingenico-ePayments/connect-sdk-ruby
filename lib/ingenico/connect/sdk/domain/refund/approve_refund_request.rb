#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Refund

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_ApproveRefundRequest ApproveRefundRequest}
      class ApproveRefundRequest < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :amount

        def to_h
          hash = super
          add_to_hash(hash, 'amount', @amount)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('amount')
            @amount = hash['amount']
          end
        end
      end
    end
  end
end
