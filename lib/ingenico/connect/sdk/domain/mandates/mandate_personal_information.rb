#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/mandates/mandate_personal_name'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Mandates
          # @attr [Ingenico::Connect::SDK::Domain::Mandates::MandatePersonalName] name
          # @attr [String] title
          class MandatePersonalInformation < Ingenico::Connect::SDK::DataObject

            attr_accessor :name

            attr_accessor :title

            # @return (Hash)
            def to_h
              hash = super
              hash['name'] = @name.to_h unless @name.nil?
              hash['title'] = @title unless @title.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'name'
                raise TypeError, "value '%s' is not a Hash" % [hash['name']] unless hash['name'].is_a? Hash
                @name = Ingenico::Connect::SDK::Domain::Mandates::MandatePersonalName.new_from_hash(hash['name'])
              end
              if hash.has_key? 'title'
                @title = hash['title']
              end
            end
          end
        end
      end
    end
  end
end
