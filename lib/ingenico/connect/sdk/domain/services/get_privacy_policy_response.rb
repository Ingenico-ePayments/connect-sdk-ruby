#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Services
          # @attr [String] html_content
          class GetPrivacyPolicyResponse < Ingenico::Connect::SDK::DataObject

            attr_accessor :html_content

            # @return (Hash)
            def to_h
              hash = super
              hash['htmlContent'] = @html_content unless @html_content.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'htmlContent'
                @html_content = hash['htmlContent']
              end
            end
          end
        end
      end
    end
  end
end
