#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/account_on_file'
require 'ingenico/connect/sdk/domain/product/authentication_indicator'
require 'ingenico/connect/sdk/domain/product/payment_product_display_hints'
require 'ingenico/connect/sdk/domain/product/payment_product_field'

module Ingenico::Connect::SDK
  module Domain
    module Product

      class PaymentProduct < Ingenico::Connect::SDK::DataObject

        # Array of {Ingenico::Connect::SDK::Domain::Product::AccountOnFile}
        attr_accessor :accounts_on_file

        # true/false
        attr_accessor :allows_recurring

        # true/false
        attr_accessor :allows_tokenization

        # {Ingenico::Connect::SDK::Domain::Product::AuthenticationIndicator}
        attr_accessor :authentication_indicator

        # true/false
        attr_accessor :auto_tokenized

        # true/false
        attr_accessor :can_be_iframed

        # {Ingenico::Connect::SDK::Domain::Product::PaymentProductDisplayHints}
        attr_accessor :display_hints

        # Array of {Ingenico::Connect::SDK::Domain::Product::PaymentProductField}
        attr_accessor :fields

        # Integer
        attr_accessor :id

        # Integer
        attr_accessor :max_amount

        # Integer
        attr_accessor :min_amount

        # String
        attr_accessor :mobile_integration_level

        # String
        attr_accessor :payment_method

        # String
        attr_accessor :payment_product_group

        # true/false
        attr_accessor :uses_redirection_to3rd_party

        def to_h
          hash = super
          add_to_hash(hash, 'accountsOnFile', @accounts_on_file)
          add_to_hash(hash, 'allowsRecurring', @allows_recurring)
          add_to_hash(hash, 'allowsTokenization', @allows_tokenization)
          add_to_hash(hash, 'authenticationIndicator', @authentication_indicator)
          add_to_hash(hash, 'autoTokenized', @auto_tokenized)
          add_to_hash(hash, 'canBeIframed', @can_be_iframed)
          add_to_hash(hash, 'displayHints', @display_hints)
          add_to_hash(hash, 'fields', @fields)
          add_to_hash(hash, 'id', @id)
          add_to_hash(hash, 'maxAmount', @max_amount)
          add_to_hash(hash, 'minAmount', @min_amount)
          add_to_hash(hash, 'mobileIntegrationLevel', @mobile_integration_level)
          add_to_hash(hash, 'paymentMethod', @payment_method)
          add_to_hash(hash, 'paymentProductGroup', @payment_product_group)
          add_to_hash(hash, 'usesRedirectionTo3rdParty', @uses_redirection_to3rd_party)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('accountsOnFile')
            if !(hash['accountsOnFile'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['accountsOnFile']]
            end
            @accounts_on_file = []
            hash['accountsOnFile'].each do |e|
              @accounts_on_file << Ingenico::Connect::SDK::Domain::Product::AccountOnFile.new_from_hash(e)
            end
          end
          if hash.has_key?('allowsRecurring')
            @allows_recurring = hash['allowsRecurring']
          end
          if hash.has_key?('allowsTokenization')
            @allows_tokenization = hash['allowsTokenization']
          end
          if hash.has_key?('authenticationIndicator')
            if !(hash['authenticationIndicator'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['authenticationIndicator']]
            end
            @authentication_indicator = Ingenico::Connect::SDK::Domain::Product::AuthenticationIndicator.new_from_hash(hash['authenticationIndicator'])
          end
          if hash.has_key?('autoTokenized')
            @auto_tokenized = hash['autoTokenized']
          end
          if hash.has_key?('canBeIframed')
            @can_be_iframed = hash['canBeIframed']
          end
          if hash.has_key?('displayHints')
            if !(hash['displayHints'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['displayHints']]
            end
            @display_hints = Ingenico::Connect::SDK::Domain::Product::PaymentProductDisplayHints.new_from_hash(hash['displayHints'])
          end
          if hash.has_key?('fields')
            if !(hash['fields'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['fields']]
            end
            @fields = []
            hash['fields'].each do |e|
              @fields << Ingenico::Connect::SDK::Domain::Product::PaymentProductField.new_from_hash(e)
            end
          end
          if hash.has_key?('id')
            @id = hash['id']
          end
          if hash.has_key?('maxAmount')
            @max_amount = hash['maxAmount']
          end
          if hash.has_key?('minAmount')
            @min_amount = hash['minAmount']
          end
          if hash.has_key?('mobileIntegrationLevel')
            @mobile_integration_level = hash['mobileIntegrationLevel']
          end
          if hash.has_key?('paymentMethod')
            @payment_method = hash['paymentMethod']
          end
          if hash.has_key?('paymentProductGroup')
            @payment_product_group = hash['paymentProductGroup']
          end
          if hash.has_key?('usesRedirectionTo3rdParty')
            @uses_redirection_to3rd_party = hash['usesRedirectionTo3rdParty']
          end
        end
      end
    end
  end
end
