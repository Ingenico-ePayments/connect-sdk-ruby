#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_BoletoBancarioRequirednessValidator BoletoBancarioRequirednessValidator}
      class BoletoBancarioRequirednessValidator < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :fiscal_number_length

        def to_h
          hash = super
          add_to_hash(hash, 'fiscalNumberLength', @fiscal_number_length)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('fiscalNumberLength')
            @fiscal_number_length = hash['fiscalNumberLength']
          end
        end
      end
    end
  end
end
