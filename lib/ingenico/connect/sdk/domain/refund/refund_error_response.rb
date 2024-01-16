#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/errors/api_error'
require 'ingenico/connect/sdk/domain/refund/refund_result'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Refund
          # @attr [String] error_id
          # @attr [Array<Ingenico::Connect::SDK::Domain::Errors::APIError>] errors
          # @attr [Ingenico::Connect::SDK::Domain::Refund::RefundResult] refund_result
          class RefundErrorResponse < Ingenico::Connect::SDK::DataObject

            attr_accessor :error_id

            attr_accessor :errors

            attr_accessor :refund_result

            # @return (Hash)
            def to_h
              hash = super
              hash['errorId'] = @error_id unless @error_id.nil?
              hash['errors'] = @errors.collect{|val| val.to_h} unless @errors.nil?
              hash['refundResult'] = @refund_result.to_h unless @refund_result.nil?
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
              if hash.has_key? 'refundResult'
                raise TypeError, "value '%s' is not a Hash" % [hash['refundResult']] unless hash['refundResult'].is_a? Hash
                @refund_result = Ingenico::Connect::SDK::Domain::Refund::RefundResult.new_from_hash(hash['refundResult'])
              end
            end
          end
        end
      end
    end
  end
end
