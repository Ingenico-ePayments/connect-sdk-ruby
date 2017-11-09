#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Mandates

      class MandatePersonalName < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :first_name

        # String
        attr_accessor :surname

        def to_h
          hash = super
          add_to_hash(hash, 'firstName', @first_name)
          add_to_hash(hash, 'surname', @surname)
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
        end
      end
    end
  end
end
