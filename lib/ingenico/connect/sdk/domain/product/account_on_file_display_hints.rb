#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/product/label_template_element'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Product
          # @attr [Array<Ingenico::Connect::SDK::Domain::Product::LabelTemplateElement>] label_template
          # @attr [String] logo
          class AccountOnFileDisplayHints < Ingenico::Connect::SDK::DataObject

            attr_accessor :label_template

            attr_accessor :logo

            # @return (Hash)
            def to_h
              hash = super
              hash['labelTemplate'] = @label_template.collect{|val| val.to_h} unless @label_template.nil?
              hash['logo'] = @logo unless @logo.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'labelTemplate'
                raise TypeError, "value '%s' is not an Array" % [hash['labelTemplate']] unless hash['labelTemplate'].is_a? Array
                @label_template = []
                hash['labelTemplate'].each do |e|
                  @label_template << Ingenico::Connect::SDK::Domain::Product::LabelTemplateElement.new_from_hash(e)
                end
              end
              if hash.has_key? 'logo'
                @logo = hash['logo']
              end
            end
          end
        end
      end
    end
  end
end
