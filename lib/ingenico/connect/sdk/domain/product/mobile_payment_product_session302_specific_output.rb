#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # @attr [String] session_object
      class MobilePaymentProductSession302SpecificOutput < Ingenico::Connect::SDK::DataObject

        attr_accessor :session_object

        # @return (Hash)
        def to_h
          hash = super
          hash['sessionObject'] = @session_object unless @session_object.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'sessionObject'
            @session_object = hash['sessionObject']
          end
        end
      end
    end
  end
end
