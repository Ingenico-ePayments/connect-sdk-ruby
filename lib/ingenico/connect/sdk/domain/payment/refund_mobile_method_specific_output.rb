#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/refund_method_specific_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

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
