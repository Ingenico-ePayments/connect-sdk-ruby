#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Hostedmandatemanagement

      class CreateHostedMandateManagementResponse < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :returnmac

        # String
        attr_accessor :hosted_mandate_management_id

        # String
        attr_accessor :partial_redirect_url

        def to_h
          hash = super
          add_to_hash(hash, 'RETURNMAC', @returnmac)
          add_to_hash(hash, 'hostedMandateManagementId', @hosted_mandate_management_id)
          add_to_hash(hash, 'partialRedirectUrl', @partial_redirect_url)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('RETURNMAC')
            @returnmac = hash['RETURNMAC']
          end
          if hash.has_key?('hostedMandateManagementId')
            @hosted_mandate_management_id = hash['hostedMandateManagementId']
          end
          if hash.has_key?('partialRedirectUrl')
            @partial_redirect_url = hash['partialRedirectUrl']
          end
        end
      end
    end
  end
end
