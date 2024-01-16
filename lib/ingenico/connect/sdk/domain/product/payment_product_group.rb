#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/account_on_file'
require 'ingenico/connect/sdk/domain/product/payment_product_display_hints'
require 'ingenico/connect/sdk/domain/product/payment_product_field'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Product
          # @attr [Array<Ingenico::Connect::SDK::Domain::Product::AccountOnFile>] accounts_on_file
          # @attr [true/false] allows_installments
          # @attr [true/false] device_fingerprint_enabled
          # @attr [Ingenico::Connect::SDK::Domain::Product::PaymentProductDisplayHints] display_hints
          # @attr [Array<Ingenico::Connect::SDK::Domain::Product::PaymentProductField>] fields
          # @attr [String] id
          class PaymentProductGroup < Ingenico::Connect::SDK::DataObject

            attr_accessor :accounts_on_file

            attr_accessor :allows_installments

            attr_accessor :device_fingerprint_enabled

            attr_accessor :display_hints

            attr_accessor :fields

            attr_accessor :id

            # @return (Hash)
            def to_h
              hash = super
              hash['accountsOnFile'] = @accounts_on_file.collect{|val| val.to_h} unless @accounts_on_file.nil?
              hash['allowsInstallments'] = @allows_installments unless @allows_installments.nil?
              hash['deviceFingerprintEnabled'] = @device_fingerprint_enabled unless @device_fingerprint_enabled.nil?
              hash['displayHints'] = @display_hints.to_h unless @display_hints.nil?
              hash['fields'] = @fields.collect{|val| val.to_h} unless @fields.nil?
              hash['id'] = @id unless @id.nil?
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
              if hash.has_key? 'allowsInstallments'
                @allows_installments = hash['allowsInstallments']
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
              if hash.has_key? 'id'
                @id = hash['id']
              end
            end
          end
        end
      end
    end
  end
end
