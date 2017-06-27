#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/personal_name_base'

module Ingenico::Connect::SDK
  module Domain
    module Payment

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
