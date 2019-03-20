#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Services

      class GetPrivacyPolicyResponse < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :html_content

        def to_h
          hash = super
          add_to_hash(hash, 'htmlContent', @html_content)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('htmlContent')
            @html_content = hash['htmlContent']
          end
        end
      end
    end
  end
end
