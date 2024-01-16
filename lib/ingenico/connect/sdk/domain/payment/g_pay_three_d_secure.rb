#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/redirection_data'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] challenge_canvas_size
          # @attr [String] challenge_indicator
          # @attr [String] exemption_request
          # @attr [Ingenico::Connect::SDK::Domain::Payment::RedirectionData] redirection_data
          # @attr [true/false] skip_authentication
          class GPayThreeDSecure < Ingenico::Connect::SDK::DataObject

            attr_accessor :challenge_canvas_size

            attr_accessor :challenge_indicator

            attr_accessor :exemption_request

            attr_accessor :redirection_data

            attr_accessor :skip_authentication

            # @return (Hash)
            def to_h
              hash = super
              hash['challengeCanvasSize'] = @challenge_canvas_size unless @challenge_canvas_size.nil?
              hash['challengeIndicator'] = @challenge_indicator unless @challenge_indicator.nil?
              hash['exemptionRequest'] = @exemption_request unless @exemption_request.nil?
              hash['redirectionData'] = @redirection_data.to_h unless @redirection_data.nil?
              hash['skipAuthentication'] = @skip_authentication unless @skip_authentication.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'challengeCanvasSize'
                @challenge_canvas_size = hash['challengeCanvasSize']
              end
              if hash.has_key? 'challengeIndicator'
                @challenge_indicator = hash['challengeIndicator']
              end
              if hash.has_key? 'exemptionRequest'
                @exemption_request = hash['exemptionRequest']
              end
              if hash.has_key? 'redirectionData'
                raise TypeError, "value '%s' is not a Hash" % [hash['redirectionData']] unless hash['redirectionData'].is_a? Hash
                @redirection_data = Ingenico::Connect::SDK::Domain::Payment::RedirectionData.new_from_hash(hash['redirectionData'])
              end
              if hash.has_key? 'skipAuthentication'
                @skip_authentication = hash['skipAuthentication']
              end
            end
          end
        end
      end
    end
  end
end
