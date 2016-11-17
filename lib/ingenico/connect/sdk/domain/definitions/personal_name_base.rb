#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PersonalNameBase PersonalNameBase}
      class PersonalNameBase < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :first_name

        # String
        attr_accessor :surname

        # String
        attr_accessor :surname_prefix

        def to_h
          hash = super
          add_to_hash(hash, 'firstName', @first_name)
          add_to_hash(hash, 'surname', @surname)
          add_to_hash(hash, 'surnamePrefix', @surname_prefix)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('firstName')
            @first_name = hash['firstName']
          end
          if hash.has_key?('surname')
            @surname = hash['surname']
          end
          if hash.has_key?('surnamePrefix')
            @surname_prefix = hash['surnamePrefix']
          end
        end
      end
    end
  end
end
