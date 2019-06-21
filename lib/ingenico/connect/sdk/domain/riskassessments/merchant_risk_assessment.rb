#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Riskassessments

      # @attr [String] website_url
      class MerchantRiskAssessment < Ingenico::Connect::SDK::DataObject

        attr_accessor :website_url

        # @return (Hash)
        def to_h
          hash = super
          hash['websiteUrl'] = @website_url unless @website_url.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'websiteUrl'
            @website_url = hash['websiteUrl']
          end
        end
      end
    end
  end
end
