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
          # @attr [String] void_response_id
          class CancelPaymentMobilePaymentMethodSpecificOutput < Ingenico::Connect::SDK::DataObject

            attr_accessor :void_response_id

            # @return (Hash)
            def to_h
              hash = super
              hash['voidResponseId'] = @void_response_id unless @void_response_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'voidResponseId'
                @void_response_id = hash['voidResponseId']
              end
            end
          end
        end
      end
    end
  end
end
