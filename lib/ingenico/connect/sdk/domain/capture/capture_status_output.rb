#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/key_value_pair'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Capture
          # @attr [true/false] is_retriable
          # @attr [Array<Ingenico::Connect::SDK::Domain::Definitions::KeyValuePair>] provider_raw_output
          # @attr [Integer] status_code
          class CaptureStatusOutput < Ingenico::Connect::SDK::DataObject

            attr_accessor :is_retriable

            attr_accessor :provider_raw_output

            attr_accessor :status_code

            # @return (Hash)
            def to_h
              hash = super
              hash['isRetriable'] = @is_retriable unless @is_retriable.nil?
              hash['providerRawOutput'] = @provider_raw_output.collect{|val| val.to_h} unless @provider_raw_output.nil?
              hash['statusCode'] = @status_code unless @status_code.nil?
              hash
            end

            def from_hash(hash)
              super
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
              if hash.has_key? 'statusCode'
                @status_code = hash['statusCode']
              end
            end
          end
        end
      end
    end
  end
end
