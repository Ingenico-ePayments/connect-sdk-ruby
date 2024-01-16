#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Product
          # @attr [String] collector_callback
          class DeviceFingerprintRequest < Ingenico::Connect::SDK::DataObject

            attr_accessor :collector_callback

            # @return (Hash)
            def to_h
              hash = super
              hash['collectorCallback'] = @collector_callback unless @collector_callback.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'collectorCallback'
                @collector_callback = hash['collectorCallback']
              end
            end
          end
        end
      end
    end
  end
end
