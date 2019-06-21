#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payout/payout_result'

module Ingenico::Connect::SDK
  module Domain
    module Payout

      # @attr [Integer] limit
      # @attr [Integer] offset
      # @attr [Array<Ingenico::Connect::SDK::Domain::Payout::PayoutResult>] payouts
      # @attr [Integer] total_count
      class FindPayoutsResponse < Ingenico::Connect::SDK::DataObject

        attr_accessor :limit

        attr_accessor :offset

        attr_accessor :payouts

        attr_accessor :total_count

        # @return (Hash)
        def to_h
          hash = super
          hash['limit'] = @limit unless @limit.nil?
          hash['offset'] = @offset unless @offset.nil?
          hash['payouts'] = @payouts.collect{|val| val.to_h} unless @payouts.nil?
          hash['totalCount'] = @total_count unless @total_count.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'limit'
            @limit = hash['limit']
          end
          if hash.has_key? 'offset'
            @offset = hash['offset']
          end
          if hash.has_key? 'payouts'
            raise TypeError, "value '%s' is not an Array" % [hash['payouts']] unless hash['payouts'].is_a? Array
            @payouts = []
            hash['payouts'].each do |e|
              @payouts << Ingenico::Connect::SDK::Domain::Payout::PayoutResult.new_from_hash(e)
            end
          end
          if hash.has_key? 'totalCount'
            @total_count = hash['totalCount']
          end
        end
      end
    end
  end
end
