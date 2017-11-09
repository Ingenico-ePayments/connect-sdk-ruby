#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/mandates/mandate_redirect_data'

module Ingenico::Connect::SDK
  module Domain
    module Mandates

      class MandateMerchantAction < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :action_type

        # {Ingenico::Connect::SDK::Domain::Mandates::MandateRedirectData}
        attr_accessor :redirect_data

        def to_h
          hash = super
          add_to_hash(hash, 'actionType', @action_type)
          add_to_hash(hash, 'redirectData', @redirect_data)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('actionType')
            @action_type = hash['actionType']
          end
          if hash.has_key?('redirectData')
            if !(hash['redirectData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['redirectData']]
            end
            @redirect_data = Ingenico::Connect::SDK::Domain::Mandates::MandateRedirectData.new_from_hash(hash['redirectData'])
          end
        end
      end
    end
  end
end
