#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payout
          # @attr [String] date_payout
          class ApprovePayoutRequest < Ingenico::Connect::SDK::DataObject

            attr_accessor :date_payout

            # @return (Hash)
            def to_h
              hash = super
              hash['datePayout'] = @date_payout unless @date_payout.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'datePayout'
                @date_payout = hash['datePayout']
              end
            end
          end
        end
      end
    end
  end
end
