#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/personal_identification'
require 'ingenico/connect/sdk/domain/payment/personal_name'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] date_of_birth
          # @attr [String] gender
          # @attr [Ingenico::Connect::SDK::Domain::Payment::PersonalIdentification] identification
          # @attr [Ingenico::Connect::SDK::Domain::Payment::PersonalName] name
          class PersonalInformation < Ingenico::Connect::SDK::DataObject

            attr_accessor :date_of_birth

            attr_accessor :gender

            attr_accessor :identification

            attr_accessor :name

            # @return (Hash)
            def to_h
              hash = super
              hash['dateOfBirth'] = @date_of_birth unless @date_of_birth.nil?
              hash['gender'] = @gender unless @gender.nil?
              hash['identification'] = @identification.to_h unless @identification.nil?
              hash['name'] = @name.to_h unless @name.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'dateOfBirth'
                @date_of_birth = hash['dateOfBirth']
              end
              if hash.has_key? 'gender'
                @gender = hash['gender']
              end
              if hash.has_key? 'identification'
                raise TypeError, "value '%s' is not a Hash" % [hash['identification']] unless hash['identification'].is_a? Hash
                @identification = Ingenico::Connect::SDK::Domain::Payment::PersonalIdentification.new_from_hash(hash['identification'])
              end
              if hash.has_key? 'name'
                raise TypeError, "value '%s' is not a Hash" % [hash['name']] unless hash['name'].is_a? Hash
                @name = Ingenico::Connect::SDK::Domain::Payment::PersonalName.new_from_hash(hash['name'])
              end
            end
          end
        end
      end
    end
  end
end
