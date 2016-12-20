#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/domain/payment/refund_method_specific_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_RefundMobileMethodSpecificOutput RefundMobileMethodSpecificOutput}
      class RefundMobileMethodSpecificOutput < Ingenico::Connect::SDK::Domain::Payment::RefundMethodSpecificOutput

        # String
        attr_accessor :network

        def to_h
          hash = super
          add_to_hash(hash, 'network', @network)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('network')
            @network = hash['network']
          end
        end
      end
    end
  end
end
