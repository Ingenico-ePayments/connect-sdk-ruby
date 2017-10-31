#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/payment_product_field_form_element'
require 'ingenico/connect/sdk/domain/product/payment_product_field_tooltip'

module Ingenico::Connect::SDK
  module Domain
    module Product

      class PaymentProductFieldDisplayHints < Ingenico::Connect::SDK::DataObject

        # true/false
        attr_accessor :always_show

        # Integer
        attr_accessor :display_order

        # {Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldFormElement}
        attr_accessor :form_element

        # String
        attr_accessor :label

        # String
        attr_accessor :link

        # String
        attr_accessor :mask

        # true/false
        attr_accessor :obfuscate

        # String
        attr_accessor :placeholder_label

        # String
        attr_accessor :preferred_input_type

        # {Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldTooltip}
        attr_accessor :tooltip

        def to_h
          hash = super
          add_to_hash(hash, 'alwaysShow', @always_show)
          add_to_hash(hash, 'displayOrder', @display_order)
          add_to_hash(hash, 'formElement', @form_element)
          add_to_hash(hash, 'label', @label)
          add_to_hash(hash, 'link', @link)
          add_to_hash(hash, 'mask', @mask)
          add_to_hash(hash, 'obfuscate', @obfuscate)
          add_to_hash(hash, 'placeholderLabel', @placeholder_label)
          add_to_hash(hash, 'preferredInputType', @preferred_input_type)
          add_to_hash(hash, 'tooltip', @tooltip)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('alwaysShow')
            @always_show = hash['alwaysShow']
          end
          if hash.has_key?('displayOrder')
            @display_order = hash['displayOrder']
          end
          if hash.has_key?('formElement')
            if !(hash['formElement'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['formElement']]
            end
            @form_element = Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldFormElement.new_from_hash(hash['formElement'])
          end
          if hash.has_key?('label')
            @label = hash['label']
          end
          if hash.has_key?('link')
            @link = hash['link']
          end
          if hash.has_key?('mask')
            @mask = hash['mask']
          end
          if hash.has_key?('obfuscate')
            @obfuscate = hash['obfuscate']
          end
          if hash.has_key?('placeholderLabel')
            @placeholder_label = hash['placeholderLabel']
          end
          if hash.has_key?('preferredInputType')
            @preferred_input_type = hash['preferredInputType']
          end
          if hash.has_key?('tooltip')
            if !(hash['tooltip'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['tooltip']]
            end
            @tooltip = Ingenico::Connect::SDK::Domain::Product::PaymentProductFieldTooltip.new_from_hash(hash['tooltip'])
          end
        end
      end
    end
  end
end
