#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/label_template_element'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_AccountOnFileDisplayHints AccountOnFileDisplayHints}
      class AccountOnFileDisplayHints < Ingenico::Connect::SDK::DataObject

        # Array of {Ingenico::Connect::SDK::Domain::Product::LabelTemplateElement}
        attr_accessor :label_template

        # String
        attr_accessor :logo

        def to_h
          hash = super
          add_to_hash(hash, 'labelTemplate', @label_template)
          add_to_hash(hash, 'logo', @logo)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('labelTemplate')
            if !(hash['labelTemplate'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['labelTemplate']]
            end
            @label_template = []
            hash['labelTemplate'].each do |e|
              @label_template << Ingenico::Connect::SDK::Domain::Product::LabelTemplateElement.new_from_hash(e)
            end
          end
          if hash.has_key?('logo')
            @logo = hash['logo']
          end
        end
      end
    end
  end
end
