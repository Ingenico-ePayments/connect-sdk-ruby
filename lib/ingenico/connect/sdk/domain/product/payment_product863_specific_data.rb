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
          # @attr [Array<String>] integration_types
          class PaymentProduct863SpecificData < Ingenico::Connect::SDK::DataObject

            attr_accessor :integration_types

            # @return (Hash)
            def to_h
              hash = super
              hash['integrationTypes'] = @integration_types unless @integration_types.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'integrationTypes'
                raise TypeError, "value '%s' is not an Array" % [hash['integrationTypes']] unless hash['integrationTypes'].is_a? Array
                @integration_types = []
                hash['integrationTypes'].each do |e|
                  @integration_types << e
                end
              end
            end
          end
        end
      end
    end
  end
end
