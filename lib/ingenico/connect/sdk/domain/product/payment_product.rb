#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/account_on_file'
require 'ingenico/connect/sdk/domain/product/authentication_indicator'
require 'ingenico/connect/sdk/domain/product/payment_product302_specific_data'
require 'ingenico/connect/sdk/domain/product/payment_product320_specific_data'
require 'ingenico/connect/sdk/domain/product/payment_product863_specific_data'
require 'ingenico/connect/sdk/domain/product/payment_product_display_hints'
require 'ingenico/connect/sdk/domain/product/payment_product_field'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # @attr [Array<Ingenico::Connect::SDK::Domain::Product::AccountOnFile>] accounts_on_file
      # @attr [true/false] allows_recurring
      # @attr [true/false] allows_tokenization
      # @attr [Ingenico::Connect::SDK::Domain::Product::AuthenticationIndicator] authentication_indicator
      # @attr [true/false] auto_tokenized
      # @attr [true/false] can_be_iframed
      # @attr [true/false] device_fingerprint_enabled
      # @attr [Ingenico::Connect::SDK::Domain::Product::PaymentProductDisplayHints] display_hints
      # @attr [Array<Ingenico::Connect::SDK::Domain::Product::PaymentProductField>] fields
      # @attr [String] fields_warning
      # @attr [Integer] id
      # @attr [true/false] is_java_script_required
      # @attr [Integer] max_amount
      # @attr [Integer] min_amount
      # @attr [String] mobile_integration_level
      # @attr [String] payment_method
      # @attr [Ingenico::Connect::SDK::Domain::Product::PaymentProduct302SpecificData] payment_product302_specific_data
      # @attr [Ingenico::Connect::SDK::Domain::Product::PaymentProduct320SpecificData] payment_product320_specific_data
      # @attr [Ingenico::Connect::SDK::Domain::Product::PaymentProduct863SpecificData] payment_product863_specific_data
      # @attr [String] payment_product_group
      # @attr [true/false] uses_redirection_to3rd_party
      class PaymentProduct < Ingenico::Connect::SDK::DataObject

        attr_accessor :accounts_on_file

        attr_accessor :allows_recurring

        attr_accessor :allows_tokenization

        attr_accessor :authentication_indicator

        attr_accessor :auto_tokenized

        attr_accessor :can_be_iframed

        attr_accessor :device_fingerprint_enabled

        attr_accessor :display_hints

        attr_accessor :fields

        attr_accessor :fields_warning

        attr_accessor :id

        attr_accessor :is_java_script_required

        attr_accessor :max_amount

        attr_accessor :min_amount

        attr_accessor :mobile_integration_level

        attr_accessor :payment_method

        attr_accessor :payment_product302_specific_data

        attr_accessor :payment_product320_specific_data

        attr_accessor :payment_product863_specific_data

        attr_accessor :payment_product_group

        attr_accessor :uses_redirection_to3rd_party

        # @return (Hash)
        def to_h
          hash = super
          hash['accountsOnFile'] = @accounts_on_file.collect{|val| val.to_h} unless @accounts_on_file.nil?
          hash['allowsRecurring'] = @allows_recurring unless @allows_recurring.nil?
          hash['allowsTokenization'] = @allows_tokenization unless @allows_tokenization.nil?
          hash['authenticationIndicator'] = @authentication_indicator.to_h unless @authentication_indicator.nil?
          hash['autoTokenized'] = @auto_tokenized unless @auto_tokenized.nil?
          hash['canBeIframed'] = @can_be_iframed unless @can_be_iframed.nil?
          hash['deviceFingerprintEnabled'] = @device_fingerprint_enabled unless @device_fingerprint_enabled.nil?
          hash['displayHints'] = @display_hints.to_h unless @display_hints.nil?
          hash['fields'] = @fields.collect{|val| val.to_h} unless @fields.nil?
          hash['fieldsWarning'] = @fields_warning unless @fields_warning.nil?
          hash['id'] = @id unless @id.nil?
          hash['isJavaScriptRequired'] = @is_java_script_required unless @is_java_script_required.nil?
          hash['maxAmount'] = @max_amount unless @max_amount.nil?
          hash['minAmount'] = @min_amount unless @min_amount.nil?
          hash['mobileIntegrationLevel'] = @mobile_integration_level unless @mobile_integration_level.nil?
          hash['paymentMethod'] = @payment_method unless @payment_method.nil?
          hash['paymentProduct302SpecificData'] = @payment_product302_specific_data.to_h unless @payment_product302_specific_data.nil?
          hash['paymentProduct320SpecificData'] = @payment_product320_specific_data.to_h unless @payment_product320_specific_data.nil?
          hash['paymentProduct863SpecificData'] = @payment_product863_specific_data.to_h unless @payment_product863_specific_data.nil?
          hash['paymentProductGroup'] = @payment_product_group unless @payment_product_group.nil?
          hash['usesRedirectionTo3rdParty'] = @uses_redirection_to3rd_party unless @uses_redirection_to3rd_party.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'accountsOnFile'
            raise TypeError, "value '%s' is not an Array" % [hash['accountsOnFile']] unless hash['accountsOnFile'].is_a? Array
            @accounts_on_file = []
            hash['accountsOnFile'].each do |e|
              @accounts_on_file << Ingenico::Connect::SDK::Domain::Product::AccountOnFile.new_from_hash(e)
            end
          end
          if hash.has_key? 'allowsRecurring'
            @allows_recurring = hash['allowsRecurring']
          end
          if hash.has_key? 'allowsTokenization'
            @allows_tokenization = hash['allowsTokenization']
          end
          if hash.has_key? 'authenticationIndicator'
            raise TypeError, "value '%s' is not a Hash" % [hash['authenticationIndicator']] unless hash['authenticationIndicator'].is_a? Hash
            @authentication_indicator = Ingenico::Connect::SDK::Domain::Product::AuthenticationIndicator.new_from_hash(hash['authenticationIndicator'])
          end
          if hash.has_key? 'autoTokenized'
            @auto_tokenized = hash['autoTokenized']
          end
          if hash.has_key? 'canBeIframed'
            @can_be_iframed = hash['canBeIframed']
          end
          if hash.has_key? 'deviceFingerprintEnabled'
            @device_fingerprint_enabled = hash['deviceFingerprintEnabled']
          end
          if hash.has_key? 'displayHints'
            raise TypeError, "value '%s' is not a Hash" % [hash['displayHints']] unless hash['displayHints'].is_a? Hash
            @display_hints = Ingenico::Connect::SDK::Domain::Product::PaymentProductDisplayHints.new_from_hash(hash['displayHints'])
          end
          if hash.has_key? 'fields'
            raise TypeError, "value '%s' is not an Array" % [hash['fields']] unless hash['fields'].is_a? Array
            @fields = []
            hash['fields'].each do |e|
              @fields << Ingenico::Connect::SDK::Domain::Product::PaymentProductField.new_from_hash(e)
            end
          end
          if hash.has_key? 'fieldsWarning'
            @fields_warning = hash['fieldsWarning']
          end
          if hash.has_key? 'id'
            @id = hash['id']
          end
          if hash.has_key? 'isJavaScriptRequired'
            @is_java_script_required = hash['isJavaScriptRequired']
          end
          if hash.has_key? 'maxAmount'
            @max_amount = hash['maxAmount']
          end
          if hash.has_key? 'minAmount'
            @min_amount = hash['minAmount']
          end
          if hash.has_key? 'mobileIntegrationLevel'
            @mobile_integration_level = hash['mobileIntegrationLevel']
          end
          if hash.has_key? 'paymentMethod'
            @payment_method = hash['paymentMethod']
          end
          if hash.has_key? 'paymentProduct302SpecificData'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct302SpecificData']] unless hash['paymentProduct302SpecificData'].is_a? Hash
            @payment_product302_specific_data = Ingenico::Connect::SDK::Domain::Product::PaymentProduct302SpecificData.new_from_hash(hash['paymentProduct302SpecificData'])
          end
          if hash.has_key? 'paymentProduct320SpecificData'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct320SpecificData']] unless hash['paymentProduct320SpecificData'].is_a? Hash
            @payment_product320_specific_data = Ingenico::Connect::SDK::Domain::Product::PaymentProduct320SpecificData.new_from_hash(hash['paymentProduct320SpecificData'])
          end
          if hash.has_key? 'paymentProduct863SpecificData'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct863SpecificData']] unless hash['paymentProduct863SpecificData'].is_a? Hash
            @payment_product863_specific_data = Ingenico::Connect::SDK::Domain::Product::PaymentProduct863SpecificData.new_from_hash(hash['paymentProduct863SpecificData'])
          end
          if hash.has_key? 'paymentProductGroup'
            @payment_product_group = hash['paymentProductGroup']
          end
          if hash.has_key? 'usesRedirectionTo3rdParty'
            @uses_redirection_to3rd_party = hash['usesRedirectionTo3rdParty']
          end
        end
      end
    end
  end
end
