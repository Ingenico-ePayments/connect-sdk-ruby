#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payout

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_ApprovePayoutRequest ApprovePayoutRequest}
      class ApprovePayoutRequest < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :date_payout

        def to_h
          hash = super
          add_to_hash(hash, 'datePayout', @date_payout)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('datePayout')
            @date_payout = hash['datePayout']
          end
        end
      end
    end
  end
end
