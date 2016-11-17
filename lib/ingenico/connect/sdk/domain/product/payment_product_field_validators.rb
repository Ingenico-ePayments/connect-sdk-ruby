#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/empty_validator'
require 'ingenico/connect/sdk/domain/product/fixed_list_validator'
require 'ingenico/connect/sdk/domain/product/length_validator'
require 'ingenico/connect/sdk/domain/product/range_validator'
require 'ingenico/connect/sdk/domain/product/regular_expression_validator'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PaymentProductFieldValidators PaymentProductFieldValidators}
      class PaymentProductFieldValidators < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Product::EmptyValidator}
        attr_accessor :email_address

        # {Ingenico::Connect::SDK::Domain::Product::EmptyValidator}
        attr_accessor :expiration_date

        # {Ingenico::Connect::SDK::Domain::Product::FixedListValidator}
        attr_accessor :fixed_list

        # {Ingenico::Connect::SDK::Domain::Product::LengthValidator}
        attr_accessor :length

        # {Ingenico::Connect::SDK::Domain::Product::EmptyValidator}
        attr_accessor :luhn

        # {Ingenico::Connect::SDK::Domain::Product::RangeValidator}
        attr_accessor :range

        # {Ingenico::Connect::SDK::Domain::Product::RegularExpressionValidator}
        attr_accessor :regular_expression

        def to_h
          hash = super
          add_to_hash(hash, 'emailAddress', @email_address)
          add_to_hash(hash, 'expirationDate', @expiration_date)
          add_to_hash(hash, 'fixedList', @fixed_list)
          add_to_hash(hash, 'length', @length)
          add_to_hash(hash, 'luhn', @luhn)
          add_to_hash(hash, 'range', @range)
          add_to_hash(hash, 'regularExpression', @regular_expression)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('emailAddress')
            if !(hash['emailAddress'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['emailAddress']]
            end
            @email_address = Ingenico::Connect::SDK::Domain::Product::EmptyValidator.new_from_hash(hash['emailAddress'])
          end
          if hash.has_key?('expirationDate')
            if !(hash['expirationDate'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['expirationDate']]
            end
            @expiration_date = Ingenico::Connect::SDK::Domain::Product::EmptyValidator.new_from_hash(hash['expirationDate'])
          end
          if hash.has_key?('fixedList')
            if !(hash['fixedList'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['fixedList']]
            end
            @fixed_list = Ingenico::Connect::SDK::Domain::Product::FixedListValidator.new_from_hash(hash['fixedList'])
          end
          if hash.has_key?('length')
            if !(hash['length'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['length']]
            end
            @length = Ingenico::Connect::SDK::Domain::Product::LengthValidator.new_from_hash(hash['length'])
          end
          if hash.has_key?('luhn')
            if !(hash['luhn'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['luhn']]
            end
            @luhn = Ingenico::Connect::SDK::Domain::Product::EmptyValidator.new_from_hash(hash['luhn'])
          end
          if hash.has_key?('range')
            if !(hash['range'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['range']]
            end
            @range = Ingenico::Connect::SDK::Domain::Product::RangeValidator.new_from_hash(hash['range'])
          end
          if hash.has_key?('regularExpression')
            if !(hash['regularExpression'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['regularExpression']]
            end
            @regular_expression = Ingenico::Connect::SDK::Domain::Product::RegularExpressionValidator.new_from_hash(hash['regularExpression'])
          end
        end
      end
    end
  end
end
