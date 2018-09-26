#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/account_on_file'
require 'ingenico/connect/sdk/domain/product/payment_product_display_hints'
require 'ingenico/connect/sdk/domain/product/payment_product_field'

module Ingenico::Connect::SDK
  module Domain
    module Product

      class PaymentProductGroup < Ingenico::Connect::SDK::DataObject

        # Array of {Ingenico::Connect::SDK::Domain::Product::AccountOnFile}
        attr_accessor :accounts_on_file

        # true/false
        attr_accessor :device_fingerprint_enabled

        # {Ingenico::Connect::SDK::Domain::Product::PaymentProductDisplayHints}
        attr_accessor :display_hints

        # Array of {Ingenico::Connect::SDK::Domain::Product::PaymentProductField}
        attr_accessor :fields

        # String
        attr_accessor :id

        def to_h
          hash = super
          add_to_hash(hash, 'accountsOnFile', @accounts_on_file)
          add_to_hash(hash, 'deviceFingerprintEnabled', @device_fingerprint_enabled)
          add_to_hash(hash, 'displayHints', @display_hints)
          add_to_hash(hash, 'fields', @fields)
          add_to_hash(hash, 'id', @id)
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
          if hash.has_key?('deviceFingerprintEnabled')
            @device_fingerprint_enabled = hash['deviceFingerprintEnabled']
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
        end
      end
    end
  end
end
