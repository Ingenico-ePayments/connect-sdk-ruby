#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/abstract_three_d_secure'
require 'ingenico/connect/sdk/domain/payment/external_cardholder_authentication_data'
require 'ingenico/connect/sdk/domain/payment/redirection_data'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class ThreeDSecure < Ingenico::Connect::SDK::Domain::Payment::AbstractThreeDSecure

        # {Ingenico::Connect::SDK::Domain::Payment::ExternalCardholderAuthenticationData}
        attr_accessor :external_cardholder_authentication_data

        # {Ingenico::Connect::SDK::Domain::Payment::RedirectionData}
        attr_accessor :redirection_data

        def to_h
          hash = super
          add_to_hash(hash, 'externalCardholderAuthenticationData', @external_cardholder_authentication_data)
          add_to_hash(hash, 'redirectionData', @redirection_data)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('externalCardholderAuthenticationData')
            if !(hash['externalCardholderAuthenticationData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['externalCardholderAuthenticationData']]
            end
            @external_cardholder_authentication_data = Ingenico::Connect::SDK::Domain::Payment::ExternalCardholderAuthenticationData.new_from_hash(hash['externalCardholderAuthenticationData'])
          end
          if hash.has_key?('redirectionData')
            if !(hash['redirectionData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['redirectionData']]
            end
            @redirection_data = Ingenico::Connect::SDK::Domain::Payment::RedirectionData.new_from_hash(hash['redirectionData'])
          end
        end
      end
    end
  end
end
