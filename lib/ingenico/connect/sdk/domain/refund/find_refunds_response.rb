#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/refund/refund_result'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Refund
          # @attr [Integer] limit
          # @attr [Integer] offset
          # @attr [Array<Ingenico::Connect::SDK::Domain::Refund::RefundResult>] refunds
          # @attr [Integer] total_count
          class FindRefundsResponse < Ingenico::Connect::SDK::DataObject

            attr_accessor :limit

            attr_accessor :offset

            attr_accessor :refunds

            attr_accessor :total_count

            # @return (Hash)
            def to_h
              hash = super
              hash['limit'] = @limit unless @limit.nil?
              hash['offset'] = @offset unless @offset.nil?
              hash['refunds'] = @refunds.collect{|val| val.to_h} unless @refunds.nil?
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
              if hash.has_key? 'refunds'
                raise TypeError, "value '%s' is not an Array" % [hash['refunds']] unless hash['refunds'].is_a? Array
                @refunds = []
                hash['refunds'].each do |e|
                  @refunds << Ingenico::Connect::SDK::Domain::Refund::RefundResult.new_from_hash(e)
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
  end
end
