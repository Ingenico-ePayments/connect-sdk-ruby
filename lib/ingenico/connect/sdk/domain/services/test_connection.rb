#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Services

      # @attr [String] result
      class TestConnection < Ingenico::Connect::SDK::DataObject

        attr_accessor :result

        # @return (Hash)
        def to_h
          hash = super
          hash['result'] = @result unless @result.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'result'
            @result = hash['result']
          end
        end
      end
    end
  end
end
