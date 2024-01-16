#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/definitions/personal_name_base'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] title
          class PersonalName < Ingenico::Connect::SDK::Domain::Definitions::PersonalNameBase

            attr_accessor :title

            # @return (Hash)
            def to_h
              hash = super
              hash['title'] = @title unless @title.nil?
              hash
            end

            def from_hash(hash)
              super
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
