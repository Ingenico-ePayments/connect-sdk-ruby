#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] eligibility
      # @attr [String] type
      class ProtectionEligibility < Ingenico::Connect::SDK::DataObject

        attr_accessor :eligibility

        attr_accessor :type

        # @return (Hash)
        def to_h
          hash = super
          hash['eligibility'] = @eligibility unless @eligibility.nil?
          hash['type'] = @type unless @type.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'eligibility'
            @eligibility = hash['eligibility']
          end
          if hash.has_key? 'type'
            @type = hash['type']
          end
        end
      end
    end
  end
end
