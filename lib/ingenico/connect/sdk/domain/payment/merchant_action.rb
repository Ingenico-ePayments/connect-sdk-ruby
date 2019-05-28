#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/key_value_pair'
require 'ingenico/connect/sdk/domain/payment/mobile_three_d_secure_challenge_parameters'
require 'ingenico/connect/sdk/domain/payment/redirect_data'
require 'ingenico/connect/sdk/domain/payment/third_party_data'
require 'ingenico/connect/sdk/domain/product/payment_product_field'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class MerchantAction < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :action_type

        # Array of {Ingenico::Connect::SDK::Domain::Product::PaymentProductField}
        attr_accessor :form_fields

        # {Ingenico::Connect::SDK::Domain::Payment::MobileThreeDSecureChallengeParameters}
        attr_accessor :mobile_three_d_secure_challenge_parameters

        # {Ingenico::Connect::SDK::Domain::Payment::RedirectData}
        attr_accessor :redirect_data

        # String
        attr_accessor :rendering_data

        # Array of {Ingenico::Connect::SDK::Domain::Definitions::KeyValuePair}
        attr_accessor :show_data

        # {Ingenico::Connect::SDK::Domain::Payment::ThirdPartyData}
        attr_accessor :third_party_data

        def to_h
          hash = super
          add_to_hash(hash, 'actionType', @action_type)
          add_to_hash(hash, 'formFields', @form_fields)
          add_to_hash(hash, 'mobileThreeDSecureChallengeParameters', @mobile_three_d_secure_challenge_parameters)
          add_to_hash(hash, 'redirectData', @redirect_data)
          add_to_hash(hash, 'renderingData', @rendering_data)
          add_to_hash(hash, 'showData', @show_data)
          add_to_hash(hash, 'thirdPartyData', @third_party_data)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('actionType')
            @action_type = hash['actionType']
          end
          if hash.has_key?('formFields')
            if !(hash['formFields'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['formFields']]
            end
            @form_fields = []
            hash['formFields'].each do |e|
              @form_fields << Ingenico::Connect::SDK::Domain::Product::PaymentProductField.new_from_hash(e)
            end
          end
          if hash.has_key?('mobileThreeDSecureChallengeParameters')
            if !(hash['mobileThreeDSecureChallengeParameters'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['mobileThreeDSecureChallengeParameters']]
            end
            @mobile_three_d_secure_challenge_parameters = Ingenico::Connect::SDK::Domain::Payment::MobileThreeDSecureChallengeParameters.new_from_hash(hash['mobileThreeDSecureChallengeParameters'])
          end
          if hash.has_key?('redirectData')
            if !(hash['redirectData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['redirectData']]
            end
            @redirect_data = Ingenico::Connect::SDK::Domain::Payment::RedirectData.new_from_hash(hash['redirectData'])
          end
          if hash.has_key?('renderingData')
            @rendering_data = hash['renderingData']
          end
          if hash.has_key?('showData')
            if !(hash['showData'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['showData']]
            end
            @show_data = []
            hash['showData'].each do |e|
              @show_data << Ingenico::Connect::SDK::Domain::Definitions::KeyValuePair.new_from_hash(e)
            end
          end
          if hash.has_key?('thirdPartyData')
            if !(hash['thirdPartyData'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['thirdPartyData']]
            end
            @third_party_data = Ingenico::Connect::SDK::Domain::Payment::ThirdPartyData.new_from_hash(hash['thirdPartyData'])
          end
        end
      end
    end
  end
end
