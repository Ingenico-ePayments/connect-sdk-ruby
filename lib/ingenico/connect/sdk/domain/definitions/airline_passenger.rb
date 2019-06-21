#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [String] first_name
      # @attr [String] surname
      # @attr [String] surname_prefix
      # @attr [String] title
      class AirlinePassenger < Ingenico::Connect::SDK::DataObject

        attr_accessor :first_name

        attr_accessor :surname

        attr_accessor :surname_prefix

        attr_accessor :title

        # @return (Hash)
        def to_h
          hash = super
          hash['firstName'] = @first_name unless @first_name.nil?
          hash['surname'] = @surname unless @surname.nil?
          hash['surnamePrefix'] = @surname_prefix unless @surname_prefix.nil?
          hash['title'] = @title unless @title.nil?
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
          if hash.has_key? 'surnamePrefix'
            @surname_prefix = hash['surnamePrefix']
          end
          if hash.has_key? 'title'
            @title = hash['title']
          end
        end
      end
    end
  end
end
