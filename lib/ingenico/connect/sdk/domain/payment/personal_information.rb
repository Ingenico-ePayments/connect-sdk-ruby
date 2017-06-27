#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/personal_name'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class PersonalInformation < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :date_of_birth

        # String
        attr_accessor :gender

        # {Ingenico::Connect::SDK::Domain::Payment::PersonalName}
        attr_accessor :name

        def to_h
          hash = super
          add_to_hash(hash, 'dateOfBirth', @date_of_birth)
          add_to_hash(hash, 'gender', @gender)
          add_to_hash(hash, 'name', @name)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('dateOfBirth')
            @date_of_birth = hash['dateOfBirth']
          end
          if hash.has_key?('gender')
            @gender = hash['gender']
          end
          if hash.has_key?('name')
            if !(hash['name'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['name']]
            end
            @name = Ingenico::Connect::SDK::Domain::Payment::PersonalName.new_from_hash(hash['name'])
          end
        end
      end
    end
  end
end
