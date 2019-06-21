#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/mandates/mandate_redirect_data'

module Ingenico::Connect::SDK
  module Domain
    module Mandates

      # @attr [String] action_type
      # @attr [Ingenico::Connect::SDK::Domain::Mandates::MandateRedirectData] redirect_data
      class MandateMerchantAction < Ingenico::Connect::SDK::DataObject

        attr_accessor :action_type

        attr_accessor :redirect_data

        # @return (Hash)
        def to_h
          hash = super
          hash['actionType'] = @action_type unless @action_type.nil?
          hash['redirectData'] = @redirect_data.to_h unless @redirect_data.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'actionType'
            @action_type = hash['actionType']
          end
          if hash.has_key? 'redirectData'
            raise TypeError, "value '%s' is not a Hash" % [hash['redirectData']] unless hash['redirectData'].is_a? Hash
            @redirect_data = Ingenico::Connect::SDK::Domain::Mandates::MandateRedirectData.new_from_hash(hash['redirectData'])
          end
        end
      end
    end
  end
end
