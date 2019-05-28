#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class RedirectPaymentProduct863SpecificInput < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :integration_type

        # String
        attr_accessor :open_id

        def to_h
          hash = super
          add_to_hash(hash, 'integrationType', @integration_type)
          add_to_hash(hash, 'openId', @open_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('integrationType')
            @integration_type = hash['integrationType']
          end
          if hash.has_key?('openId')
            @open_id = hash['openId']
          end
        end
      end
    end
  end
end
