#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] first_name
      # @attr [String] surname
      class AfrName < Ingenico::Connect::SDK::DataObject

        attr_accessor :first_name

        attr_accessor :surname

        # @return (Hash)
        def to_h
          hash = super
          hash['firstName'] = @first_name unless @first_name.nil?
          hash['surname'] = @surname unless @surname.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'firstName'
            @first_name = hash['firstName']
          end
          if hash.has_key? 'surname'
            @surname = hash['surname']
          end
        end
      end
    end
  end
end
