#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/boleto_bancario_requiredness_validator'
require 'ingenico/connect/sdk/domain/product/empty_validator'
require 'ingenico/connect/sdk/domain/product/fixed_list_validator'
require 'ingenico/connect/sdk/domain/product/length_validator'
require 'ingenico/connect/sdk/domain/product/range_validator'
require 'ingenico/connect/sdk/domain/product/regular_expression_validator'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # @attr [Ingenico::Connect::SDK::Domain::Product::BoletoBancarioRequirednessValidator] boleto_bancario_requiredness
      # @attr [Ingenico::Connect::SDK::Domain::Product::EmptyValidator] email_address
      # @attr [Ingenico::Connect::SDK::Domain::Product::EmptyValidator] expiration_date
      # @attr [Ingenico::Connect::SDK::Domain::Product::FixedListValidator] fixed_list
      # @attr [Ingenico::Connect::SDK::Domain::Product::EmptyValidator] iban
      # @attr [Ingenico::Connect::SDK::Domain::Product::LengthValidator] length
      # @attr [Ingenico::Connect::SDK::Domain::Product::EmptyValidator] luhn
      # @attr [Ingenico::Connect::SDK::Domain::Product::RangeValidator] range
      # @attr [Ingenico::Connect::SDK::Domain::Product::RegularExpressionValidator] regular_expression
      # @attr [Ingenico::Connect::SDK::Domain::Product::EmptyValidator] resident_id_number
      # @attr [Ingenico::Connect::SDK::Domain::Product::EmptyValidator] terms_and_conditions
      class PaymentProductFieldValidators < Ingenico::Connect::SDK::DataObject

        attr_accessor :boleto_bancario_requiredness

        attr_accessor :email_address

        attr_accessor :expiration_date

        attr_accessor :fixed_list

        attr_accessor :iban

        attr_accessor :length

        attr_accessor :luhn

        attr_accessor :range

        attr_accessor :regular_expression

        attr_accessor :resident_id_number

        attr_accessor :terms_and_conditions

        # @return (Hash)
        def to_h
          hash = super
          hash['boletoBancarioRequiredness'] = @boleto_bancario_requiredness.to_h unless @boleto_bancario_requiredness.nil?
          hash['emailAddress'] = @email_address.to_h unless @email_address.nil?
          hash['expirationDate'] = @expiration_date.to_h unless @expiration_date.nil?
          hash['fixedList'] = @fixed_list.to_h unless @fixed_list.nil?
          hash['iban'] = @iban.to_h unless @iban.nil?
          hash['length'] = @length.to_h unless @length.nil?
          hash['luhn'] = @luhn.to_h unless @luhn.nil?
          hash['range'] = @range.to_h unless @range.nil?
          hash['regularExpression'] = @regular_expression.to_h unless @regular_expression.nil?
          hash['residentIdNumber'] = @resident_id_number.to_h unless @resident_id_number.nil?
          hash['termsAndConditions'] = @terms_and_conditions.to_h unless @terms_and_conditions.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'boletoBancarioRequiredness'
            raise TypeError, "value '%s' is not a Hash" % [hash['boletoBancarioRequiredness']] unless hash['boletoBancarioRequiredness'].is_a? Hash
            @boleto_bancario_requiredness = Ingenico::Connect::SDK::Domain::Product::BoletoBancarioRequirednessValidator.new_from_hash(hash['boletoBancarioRequiredness'])
          end
          if hash.has_key? 'emailAddress'
            raise TypeError, "value '%s' is not a Hash" % [hash['emailAddress']] unless hash['emailAddress'].is_a? Hash
            @email_address = Ingenico::Connect::SDK::Domain::Product::EmptyValidator.new_from_hash(hash['emailAddress'])
          end
          if hash.has_key? 'expirationDate'
            raise TypeError, "value '%s' is not a Hash" % [hash['expirationDate']] unless hash['expirationDate'].is_a? Hash
            @expiration_date = Ingenico::Connect::SDK::Domain::Product::EmptyValidator.new_from_hash(hash['expirationDate'])
          end
          if hash.has_key? 'fixedList'
            raise TypeError, "value '%s' is not a Hash" % [hash['fixedList']] unless hash['fixedList'].is_a? Hash
            @fixed_list = Ingenico::Connect::SDK::Domain::Product::FixedListValidator.new_from_hash(hash['fixedList'])
          end
          if hash.has_key? 'iban'
            raise TypeError, "value '%s' is not a Hash" % [hash['iban']] unless hash['iban'].is_a? Hash
            @iban = Ingenico::Connect::SDK::Domain::Product::EmptyValidator.new_from_hash(hash['iban'])
          end
          if hash.has_key? 'length'
            raise TypeError, "value '%s' is not a Hash" % [hash['length']] unless hash['length'].is_a? Hash
            @length = Ingenico::Connect::SDK::Domain::Product::LengthValidator.new_from_hash(hash['length'])
          end
          if hash.has_key? 'luhn'
            raise TypeError, "value '%s' is not a Hash" % [hash['luhn']] unless hash['luhn'].is_a? Hash
            @luhn = Ingenico::Connect::SDK::Domain::Product::EmptyValidator.new_from_hash(hash['luhn'])
          end
          if hash.has_key? 'range'
            raise TypeError, "value '%s' is not a Hash" % [hash['range']] unless hash['range'].is_a? Hash
            @range = Ingenico::Connect::SDK::Domain::Product::RangeValidator.new_from_hash(hash['range'])
          end
          if hash.has_key? 'regularExpression'
            raise TypeError, "value '%s' is not a Hash" % [hash['regularExpression']] unless hash['regularExpression'].is_a? Hash
            @regular_expression = Ingenico::Connect::SDK::Domain::Product::RegularExpressionValidator.new_from_hash(hash['regularExpression'])
          end
          if hash.has_key? 'residentIdNumber'
            raise TypeError, "value '%s' is not a Hash" % [hash['residentIdNumber']] unless hash['residentIdNumber'].is_a? Hash
            @resident_id_number = Ingenico::Connect::SDK::Domain::Product::EmptyValidator.new_from_hash(hash['residentIdNumber'])
          end
          if hash.has_key? 'termsAndConditions'
            raise TypeError, "value '%s' is not a Hash" % [hash['termsAndConditions']] unless hash['termsAndConditions'].is_a? Hash
            @terms_and_conditions = Ingenico::Connect::SDK::Domain::Product::EmptyValidator.new_from_hash(hash['termsAndConditions'])
          end
        end
      end
    end
  end
end
