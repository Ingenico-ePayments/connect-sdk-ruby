#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/token/personal_name_token'

module Ingenico::Connect::SDK
  module Domain
    module Token

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PersonalInformationToken PersonalInformationToken}
      class PersonalInformationToken < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Token::PersonalNameToken}
        attr_accessor :name

        def to_h
          hash = super
          add_to_hash(hash, 'name', @name)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('name')
            if !(hash['name'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['name']]
            end
            @name = Ingenico::Connect::SDK::Domain::Token::PersonalNameToken.new_from_hash(hash['name'])
          end
        end
      end
    end
  end
end
