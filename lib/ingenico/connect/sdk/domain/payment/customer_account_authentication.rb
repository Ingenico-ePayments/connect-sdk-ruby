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
          # @attr [String] data
          # @attr [String] method
          # @attr [String] utc_timestamp
          class CustomerAccountAuthentication < Ingenico::Connect::SDK::DataObject

            attr_accessor :data

            attr_accessor :method

            attr_accessor :utc_timestamp

            # @return (Hash)
            def to_h
              hash = super
              hash['data'] = @data unless @data.nil?
              hash['method'] = @method unless @method.nil?
              hash['utcTimestamp'] = @utc_timestamp unless @utc_timestamp.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'data'
                @data = hash['data']
              end
              if hash.has_key? 'method'
                @method = hash['method']
              end
              if hash.has_key? 'utcTimestamp'
                @utc_timestamp = hash['utcTimestamp']
              end
            end
          end
        end
      end
    end
  end
end
