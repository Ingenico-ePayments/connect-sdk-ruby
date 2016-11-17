#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_ValidationBankAccountCheck ValidationBankAccountCheck}
      class ValidationBankAccountCheck < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :code

        # String
        attr_accessor :description

        # String
        attr_accessor :result

        def to_h
          hash = super
          add_to_hash(hash, 'code', @code)
          add_to_hash(hash, 'description', @description)
          add_to_hash(hash, 'result', @result)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('code')
            @code = hash['code']
          end
          if hash.has_key?('description')
            @description = hash['description']
          end
          if hash.has_key?('result')
            @result = hash['result']
          end
        end
      end
    end
  end
end
