#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/mandates/mandate_personal_name'

module Ingenico::Connect::SDK
  module Domain
    module Mandates

      class MandatePersonalInformation < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Mandates::MandatePersonalName}
        attr_accessor :name

        # String
        attr_accessor :title

        def to_h
          hash = super
          add_to_hash(hash, 'name', @name)
          add_to_hash(hash, 'title', @title)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('name')
            if !(hash['name'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['name']]
            end
            @name = Ingenico::Connect::SDK::Domain::Mandates::MandatePersonalName.new_from_hash(hash['name'])
          end
          if hash.has_key?('title')
            @title = hash['title']
          end
        end
      end
    end
  end
end
