#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/key_value_pair'
require 'ingenico/connect/sdk/domain/payment/mobile_three_d_secure_challenge_parameters'
require 'ingenico/connect/sdk/domain/payment/redirect_data'
require 'ingenico/connect/sdk/domain/payment/third_party_data'
require 'ingenico/connect/sdk/domain/product/payment_product_field'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] action_type
          # @attr [Array<Ingenico::Connect::SDK::Domain::Product::PaymentProductField>] form_fields
          # @attr [Ingenico::Connect::SDK::Domain::Payment::MobileThreeDSecureChallengeParameters] mobile_three_d_secure_challenge_parameters
          # @attr [Ingenico::Connect::SDK::Domain::Payment::RedirectData] redirect_data
          # @attr [String] rendering_data
          # @attr [Array<Ingenico::Connect::SDK::Domain::Definitions::KeyValuePair>] show_data
          # @attr [Ingenico::Connect::SDK::Domain::Payment::ThirdPartyData] third_party_data
          class MerchantAction < Ingenico::Connect::SDK::DataObject

            attr_accessor :action_type

            attr_accessor :form_fields

            attr_accessor :mobile_three_d_secure_challenge_parameters

            attr_accessor :redirect_data

            attr_accessor :rendering_data

            attr_accessor :show_data

            attr_accessor :third_party_data

            # @return (Hash)
            def to_h
              hash = super
              hash['actionType'] = @action_type unless @action_type.nil?
              hash['formFields'] = @form_fields.collect{|val| val.to_h} unless @form_fields.nil?
              hash['mobileThreeDSecureChallengeParameters'] = @mobile_three_d_secure_challenge_parameters.to_h unless @mobile_three_d_secure_challenge_parameters.nil?
              hash['redirectData'] = @redirect_data.to_h unless @redirect_data.nil?
              hash['renderingData'] = @rendering_data unless @rendering_data.nil?
              hash['showData'] = @show_data.collect{|val| val.to_h} unless @show_data.nil?
              hash['thirdPartyData'] = @third_party_data.to_h unless @third_party_data.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'actionType'
                @action_type = hash['actionType']
              end
              if hash.has_key? 'formFields'
                raise TypeError, "value '%s' is not an Array" % [hash['formFields']] unless hash['formFields'].is_a? Array
                @form_fields = []
                hash['formFields'].each do |e|
                  @form_fields << Ingenico::Connect::SDK::Domain::Product::PaymentProductField.new_from_hash(e)
                end
              end
              if hash.has_key? 'mobileThreeDSecureChallengeParameters'
                raise TypeError, "value '%s' is not a Hash" % [hash['mobileThreeDSecureChallengeParameters']] unless hash['mobileThreeDSecureChallengeParameters'].is_a? Hash
                @mobile_three_d_secure_challenge_parameters = Ingenico::Connect::SDK::Domain::Payment::MobileThreeDSecureChallengeParameters.new_from_hash(hash['mobileThreeDSecureChallengeParameters'])
              end
              if hash.has_key? 'redirectData'
                raise TypeError, "value '%s' is not a Hash" % [hash['redirectData']] unless hash['redirectData'].is_a? Hash
                @redirect_data = Ingenico::Connect::SDK::Domain::Payment::RedirectData.new_from_hash(hash['redirectData'])
              end
              if hash.has_key? 'renderingData'
                @rendering_data = hash['renderingData']
              end
              if hash.has_key? 'showData'
                raise TypeError, "value '%s' is not an Array" % [hash['showData']] unless hash['showData'].is_a? Array
                @show_data = []
                hash['showData'].each do |e|
                  @show_data << Ingenico::Connect::SDK::Domain::Definitions::KeyValuePair.new_from_hash(e)
                end
              end
              if hash.has_key? 'thirdPartyData'
                raise TypeError, "value '%s' is not a Hash" % [hash['thirdPartyData']] unless hash['thirdPartyData'].is_a? Hash
                @third_party_data = Ingenico::Connect::SDK::Domain::Payment::ThirdPartyData.new_from_hash(hash['thirdPartyData'])
              end
            end
          end
        end
      end
    end
  end
end
