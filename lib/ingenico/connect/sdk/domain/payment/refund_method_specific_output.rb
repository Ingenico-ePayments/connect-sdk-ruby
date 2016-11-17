#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_RefundMethodSpecificOutput RefundMethodSpecificOutput}
      class RefundMethodSpecificOutput < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :total_amount_paid

        # Integer
        attr_accessor :total_amount_refunded

        def to_h
          hash = super
          add_to_hash(hash, 'totalAmountPaid', @total_amount_paid)
          add_to_hash(hash, 'totalAmountRefunded', @total_amount_refunded)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('totalAmountPaid')
            @total_amount_paid = hash['totalAmountPaid']
          end
          if hash.has_key?('totalAmountRefunded')
            @total_amount_refunded = hash['totalAmountRefunded']
          end
        end
      end
    end
  end
end
