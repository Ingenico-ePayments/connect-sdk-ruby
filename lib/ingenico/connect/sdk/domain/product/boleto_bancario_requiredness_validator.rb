#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Product
          # @attr [Integer] fiscal_number_length
          class BoletoBancarioRequirednessValidator < Ingenico::Connect::SDK::DataObject

            attr_accessor :fiscal_number_length

            # @return (Hash)
            def to_h
              hash = super
              hash['fiscalNumberLength'] = @fiscal_number_length unless @fiscal_number_length.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'fiscalNumberLength'
                @fiscal_number_length = hash['fiscalNumberLength']
              end
            end
          end
        end
      end
    end
  end
end
