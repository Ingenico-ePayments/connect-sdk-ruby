#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/payment'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Integer] limit
      # @attr [Integer] offset
      # @attr [Array<Ingenico::Connect::SDK::Domain::Payment::Payment>] payments
      # @attr [Integer] total_count
      class FindPaymentsResponse < Ingenico::Connect::SDK::DataObject

        attr_accessor :limit

        attr_accessor :offset

        attr_accessor :payments

        attr_accessor :total_count

        # @return (Hash)
        def to_h
          hash = super
          hash['limit'] = @limit unless @limit.nil?
          hash['offset'] = @offset unless @offset.nil?
          hash['payments'] = @payments.collect{|val| val.to_h} unless @payments.nil?
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
          if hash.has_key? 'payments'
            raise TypeError, "value '%s' is not an Array" % [hash['payments']] unless hash['payments'].is_a? Array
            @payments = []
            hash['payments'].each do |e|
              @payments << Ingenico::Connect::SDK::Domain::Payment::Payment.new_from_hash(e)
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
