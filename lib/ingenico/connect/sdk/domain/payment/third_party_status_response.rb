#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] third_party_status
          class ThirdPartyStatusResponse < Ingenico::Connect::SDK::DataObject

            attr_accessor :third_party_status

            # @return (Hash)
            def to_h
              hash = super
              hash['thirdPartyStatus'] = @third_party_status unless @third_party_status.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'thirdPartyStatus'
                @third_party_status = hash['thirdPartyStatus']
              end
            end
          end
        end
      end
    end
  end
end
