#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/sdk_data_input'
require 'ingenico/connect/sdk/domain/payment/three_d_secure_data'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class AbstractThreeDSecure < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :authentication_flow

        # String
        attr_accessor :challenge_canvas_size

        # String
        attr_accessor :challenge_indicator

        # {Ingenico::Connect::SDK::Domain::Payment::ThreeDSecureData}
        attr_accessor :prior_three_d_secure_data

        # {Ingenico::Connect::SDK::Domain::Payment::SdkDataInput}
        attr_accessor :sdk_data

        # true/false
        attr_accessor :skip_authentication

        def to_h
          hash = super
          add_to_hash(hash, 'authenticationFlow', @authentication_flow)
          add_to_hash(hash, 'challengeCanvasSize', @challenge_canvas_size)
          add_to_hash(hash, 'challengeIndicator', @challenge_indicator)
          add_to_hash(hash, 'priorThreeDSecureData', @prior_three_d_secure_data)
          add_to_hash(hash, 'sdkData', @sdk_data)
          add_to_hash(hash, 'skipAuthentication', @skip_authentication)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('authenticationFlow')
            @authentication_flow = hash['authenticationFlow']
          end
          if hash.has_key?('challengeCanvasSize')
            @challenge_canvas_size = hash['challengeCanvasSize']
          end
          if hash.has_key?('challengeIndicator')
            @challenge_indicator = hash['challengeIndicator']
          end
          if hash.has_key?('priorThreeDSecureData')
            if !(hash['priorThreeDSecureData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['priorThreeDSecureData']]
            end
            @prior_three_d_secure_data = Ingenico::Connect::SDK::Domain::Payment::ThreeDSecureData.new_from_hash(hash['priorThreeDSecureData'])
          end
          if hash.has_key?('sdkData')
            if !(hash['sdkData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['sdkData']]
            end
            @sdk_data = Ingenico::Connect::SDK::Domain::Payment::SdkDataInput.new_from_hash(hash['sdkData'])
          end
          if hash.has_key?('skipAuthentication')
            @skip_authentication = hash['skipAuthentication']
          end
        end
      end
    end
  end
end
