#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/key_value_pair'
require 'ingenico/connect/sdk/domain/errors/api_error'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Definitions
          # @attr [Array<Ingenico::Connect::SDK::Domain::Errors::APIError>] errors
          # @attr [true/false] is_cancellable
          # @attr [true/false] is_retriable
          # @attr [Array<Ingenico::Connect::SDK::Domain::Definitions::KeyValuePair>] provider_raw_output
          # @attr [String] status_category
          # @attr [Integer] status_code
          # @attr [String] status_code_change_date_time
          class OrderStatusOutput < Ingenico::Connect::SDK::DataObject

            attr_accessor :errors

            attr_accessor :is_cancellable

            attr_accessor :is_retriable

            attr_accessor :provider_raw_output

            attr_accessor :status_category

            attr_accessor :status_code

            attr_accessor :status_code_change_date_time

            # @return (Hash)
            def to_h
              hash = super
              hash['errors'] = @errors.collect{|val| val.to_h} unless @errors.nil?
              hash['isCancellable'] = @is_cancellable unless @is_cancellable.nil?
              hash['isRetriable'] = @is_retriable unless @is_retriable.nil?
              hash['providerRawOutput'] = @provider_raw_output.collect{|val| val.to_h} unless @provider_raw_output.nil?
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
              if hash.has_key? 'isRetriable'
                @is_retriable = hash['isRetriable']
              end
              if hash.has_key? 'providerRawOutput'
                raise TypeError, "value '%s' is not an Array" % [hash['providerRawOutput']] unless hash['providerRawOutput'].is_a? Array
                @provider_raw_output = []
                hash['providerRawOutput'].each do |e|
                  @provider_raw_output << Ingenico::Connect::SDK::Domain::Definitions::KeyValuePair.new_from_hash(e)
                end
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
  end
end
