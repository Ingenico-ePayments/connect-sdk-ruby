#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Hostedmandatemanagement
          # @attr [String] returnmac
          # @attr [String] hosted_mandate_management_id
          # @attr [String] partial_redirect_url
          class CreateHostedMandateManagementResponse < Ingenico::Connect::SDK::DataObject

            attr_accessor :returnmac

            attr_accessor :hosted_mandate_management_id

            attr_accessor :partial_redirect_url

            # @return (Hash)
            def to_h
              hash = super
              hash['RETURNMAC'] = @returnmac unless @returnmac.nil?
              hash['hostedMandateManagementId'] = @hosted_mandate_management_id unless @hosted_mandate_management_id.nil?
              hash['partialRedirectUrl'] = @partial_redirect_url unless @partial_redirect_url.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'RETURNMAC'
                @returnmac = hash['RETURNMAC']
              end
              if hash.has_key? 'hostedMandateManagementId'
                @hosted_mandate_management_id = hash['hostedMandateManagementId']
              end
              if hash.has_key? 'partialRedirectUrl'
                @partial_redirect_url = hash['partialRedirectUrl']
              end
            end
          end
        end
      end
    end
  end
end
