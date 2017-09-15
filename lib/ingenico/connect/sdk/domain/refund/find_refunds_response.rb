#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/refund/refund_result'

module Ingenico::Connect::SDK
  module Domain
    module Refund

      class FindRefundsResponse < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :limit

        # Integer
        attr_accessor :offset

        # Array of {Ingenico::Connect::SDK::Domain::Refund::RefundResult}
        attr_accessor :refunds

        # Integer
        attr_accessor :total_count

        def to_h
          hash = super
          add_to_hash(hash, 'limit', @limit)
          add_to_hash(hash, 'offset', @offset)
          add_to_hash(hash, 'refunds', @refunds)
          add_to_hash(hash, 'totalCount', @total_count)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('limit')
            @limit = hash['limit']
          end
          if hash.has_key?('offset')
            @offset = hash['offset']
          end
          if hash.has_key?('refunds')
            if !(hash['refunds'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['refunds']]
            end
            @refunds = []
            hash['refunds'].each do |e|
              @refunds << Ingenico::Connect::SDK::Domain::Refund::RefundResult.new_from_hash(e)
            end
          end
          if hash.has_key?('totalCount')
            @total_count = hash['totalCount']
          end
        end
      end
    end
  end
end
