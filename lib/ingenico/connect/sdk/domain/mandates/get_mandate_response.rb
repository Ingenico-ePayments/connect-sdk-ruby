#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/mandates/mandate_response'

module Ingenico::Connect::SDK
  module Domain
    module Mandates

      class GetMandateResponse < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Mandates::MandateResponse}
        attr_accessor :mandate

        def to_h
          hash = super
          add_to_hash(hash, 'mandate', @mandate)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('mandate')
            if !(hash['mandate'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['mandate']]
            end
            @mandate = Ingenico::Connect::SDK::Domain::Mandates::MandateResponse.new_from_hash(hash['mandate'])
          end
        end
      end
    end
  end
end
