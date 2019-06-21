#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [String] name
      # @attr [String] vat_number
      class CompanyInformation < Ingenico::Connect::SDK::DataObject

        attr_accessor :name

        attr_accessor :vat_number

        # @return (Hash)
        def to_h
          hash = super
          hash['name'] = @name unless @name.nil?
          hash['vatNumber'] = @vat_number unless @vat_number.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'name'
            @name = hash['name']
          end
          if hash.has_key? 'vatNumber'
            @vat_number = hash['vatNumber']
          end
        end
      end
    end
  end
end
