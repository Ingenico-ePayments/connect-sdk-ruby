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
          # @attr [String] configuration_id
          class PayoutMerchant < Ingenico::Connect::SDK::DataObject

            attr_accessor :configuration_id

            # @return (Hash)
            def to_h
              hash = super
              hash['configurationId'] = @configuration_id unless @configuration_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'configurationId'
                @configuration_id = hash['configurationId']
              end
            end
          end
        end
      end
    end
  end
end
