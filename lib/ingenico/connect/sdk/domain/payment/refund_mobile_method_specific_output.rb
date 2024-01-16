#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/payment/refund_method_specific_output'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] network
          class RefundMobileMethodSpecificOutput < Ingenico::Connect::SDK::Domain::Payment::RefundMethodSpecificOutput

            attr_accessor :network

            # @return (Hash)
            def to_h
              hash = super
              hash['network'] = @network unless @network.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'network'
                @network = hash['network']
              end
            end
          end
        end
      end
    end
  end
end
