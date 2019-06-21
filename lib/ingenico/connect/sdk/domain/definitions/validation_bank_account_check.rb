#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [String] code
      # @attr [String] description
      # @attr [String] result
      class ValidationBankAccountCheck < Ingenico::Connect::SDK::DataObject

        attr_accessor :code

        attr_accessor :description

        attr_accessor :result

        # @return (Hash)
        def to_h
          hash = super
          hash['code'] = @code unless @code.nil?
          hash['description'] = @description unless @description.nil?
          hash['result'] = @result unless @result.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'code'
            @code = hash['code']
          end
          if hash.has_key? 'description'
            @description = hash['description']
          end
          if hash.has_key? 'result'
            @result = hash['result']
          end
        end
      end
    end
  end
end
