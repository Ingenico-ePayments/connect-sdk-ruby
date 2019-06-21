#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/errors/api_error'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # @attr [Array<Ingenico::Connect::SDK::Domain::Errors::APIError>] errors
      # @attr [true/false] is_cancellable
      # @attr [String] status_category
      # @attr [Integer] status_code
      # @attr [String] status_code_change_date_time
      class OrderStatusOutput < Ingenico::Connect::SDK::DataObject

        attr_accessor :errors

        attr_accessor :is_cancellable

        attr_accessor :status_category

        attr_accessor :status_code

        attr_accessor :status_code_change_date_time

        # @return (Hash)
        def to_h
          hash = super
          hash['errors'] = @errors.collect{|val| val.to_h} unless @errors.nil?
          hash['isCancellable'] = @is_cancellable unless @is_cancellable.nil?
          hash['statusCategory'] = @status_category unless @status_category.nil?
          hash['statusCode'] = @status_code unless @status_code.nil?
          hash['statusCodeChangeDateTime'] = @status_code_change_date_time unless @status_code_change_date_time.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'errors'
            raise TypeError, "value '%s' is not an Array" % [hash['errors']] unless hash['errors'].is_a? Array
            @errors = []
            hash['errors'].each do |e|
              @errors << Ingenico::Connect::SDK::Domain::Errors::APIError.new_from_hash(e)
            end
          end
          if hash.has_key? 'isCancellable'
            @is_cancellable = hash['isCancellable']
          end
          if hash.has_key? 'statusCategory'
            @status_category = hash['statusCategory']
          end
          if hash.has_key? 'statusCode'
            @status_code = hash['statusCode']
          end
          if hash.has_key? 'statusCodeChangeDateTime'
            @status_code_change_date_time = hash['statusCodeChangeDateTime']
          end
        end
      end
    end
  end
end
