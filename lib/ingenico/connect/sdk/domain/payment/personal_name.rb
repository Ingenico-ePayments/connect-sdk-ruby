#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/domain/definitions/personal_name_base'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PersonalName PersonalName}
      class PersonalName < Ingenico::Connect::SDK::Domain::Definitions::PersonalNameBase

        # String
        attr_accessor :title

        def to_h
          hash = super
          add_to_hash(hash, 'title', @title)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('title')
            @title = hash['title']
          end
        end
      end
    end
  end
end
