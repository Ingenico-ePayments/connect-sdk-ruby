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

      # @attr [Ingenico::Connect::SDK::Domain::Payment::ExternalCardholderAuthenticationData] external_cardholder_authentication_data
      # @attr [Ingenico::Connect::SDK::Domain::Payment::RedirectionData] redirection_data
      class ThreeDSecure < Ingenico::Connect::SDK::Domain::Payment::AbstractThreeDSecure

        attr_accessor :external_cardholder_authentication_data

        attr_accessor :redirection_data

        # @return (Hash)
        def to_h
          hash = super
          hash['externalCardholderAuthenticationData'] = @external_cardholder_authentication_data.to_h unless @external_cardholder_authentication_data.nil?
          hash['redirectionData'] = @redirection_data.to_h unless @redirection_data.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'externalCardholderAuthenticationData'
            raise TypeError, "value '%s' is not a Hash" % [hash['externalCardholderAuthenticationData']] unless hash['externalCardholderAuthenticationData'].is_a? Hash
            @external_cardholder_authentication_data = Ingenico::Connect::SDK::Domain::Payment::ExternalCardholderAuthenticationData.new_from_hash(hash['externalCardholderAuthenticationData'])
          end
          if hash.has_key? 'redirectionData'
            raise TypeError, "value '%s' is not a Hash" % [hash['redirectionData']] unless hash['redirectionData'].is_a? Hash
            @redirection_data = Ingenico::Connect::SDK::Domain::Payment::RedirectionData.new_from_hash(hash['redirectionData'])
          end
        end
      end
    end
  end
end
