#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/errors/api_error'
require 'ingenico/connect/sdk/domain/payout/payout_result'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payout
          # @attr [String] error_id
          # @attr [Array<Ingenico::Connect::SDK::Domain::Errors::APIError>] errors
          # @attr [Ingenico::Connect::SDK::Domain::Payout::PayoutResult] payout_result
          class PayoutErrorResponse < Ingenico::Connect::SDK::DataObject

            attr_accessor :error_id

            attr_accessor :errors

            attr_accessor :payout_result

            # @return (Hash)
            def to_h
              hash = super
              hash['errorId'] = @error_id unless @error_id.nil?
              hash['errors'] = @errors.collect{|val| val.to_h} unless @errors.nil?
              hash['payoutResult'] = @payout_result.to_h unless @payout_result.nil?
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
              if hash.has_key? 'payoutResult'
                raise TypeError, "value '%s' is not a Hash" % [hash['payoutResult']] unless hash['payoutResult'].is_a? Hash
                @payout_result = Ingenico::Connect::SDK::Domain::Payout::PayoutResult.new_from_hash(hash['payoutResult'])
              end
            end
          end
        end
      end
    end
  end
end
