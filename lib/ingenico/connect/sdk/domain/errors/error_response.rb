#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/errors/api_error'

module Ingenico::Connect::SDK
  module Domain
    module Errors

      # @attr [String] error_id
      # @attr [Array<Ingenico::Connect::SDK::Domain::Errors::APIError>] errors
      class ErrorResponse < Ingenico::Connect::SDK::DataObject

        attr_accessor :error_id

        attr_accessor :errors

        # @return (Hash)
        def to_h
          hash = super
          hash['errorId'] = @error_id unless @error_id.nil?
          hash['errors'] = @errors.collect{|val| val.to_h} unless @errors.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'errorId'
            @error_id = hash['errorId']
          end
          if hash.has_key? 'errors'
            raise TypeError, "value '%s' is not an Array" % [hash['errors']] unless hash['errors'].is_a? Array
            @errors = []
            hash['errors'].each do |e|
              @errors << Ingenico::Connect::SDK::Domain::Errors::APIError.new_from_hash(e)
            end
          end
        end
      end
    end
  end
end
