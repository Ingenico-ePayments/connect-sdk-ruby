#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # @attr [Array<String>] allowed_values
      class FixedListValidator < Ingenico::Connect::SDK::DataObject

        attr_accessor :allowed_values

        # @return (Hash)
        def to_h
          hash = super
          hash['allowedValues'] = @allowed_values unless @allowed_values.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'allowedValues'
            raise TypeError, "value '%s' is not an Array" % [hash['allowedValues']] unless hash['allowedValues'].is_a? Array
            @allowed_values = []
            hash['allowedValues'].each do |e|
              @allowed_values << e
            end
          end
        end
      end
    end
  end
end
