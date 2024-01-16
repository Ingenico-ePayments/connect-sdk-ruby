#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/payment/personal_name'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [Ingenico::Connect::SDK::Domain::Payment::PersonalName] name
          class AddressPersonal < Ingenico::Connect::SDK::Domain::Definitions::Address

            attr_accessor :name

            # @return (Hash)
            def to_h
              hash = super
              hash['name'] = @name.to_h unless @name.nil?
              hash
            end

            def from_hash(hash)
              super
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
