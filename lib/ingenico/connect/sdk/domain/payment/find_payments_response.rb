#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/payment'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class FindPaymentsResponse < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :limit

        # Integer
        attr_accessor :offset

        # Array of {Ingenico::Connect::SDK::Domain::Payment::Payment}
        attr_accessor :payments

        # Integer
        attr_accessor :total_count

        def to_h
          hash = super
          add_to_hash(hash, 'limit', @limit)
          add_to_hash(hash, 'offset', @offset)
          add_to_hash(hash, 'payments', @payments)
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
          if hash.has_key?('payments')
            if !(hash['payments'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['payments']]
            end
            @payments = []
            hash['payments'].each do |e|
              @payments << Ingenico::Connect::SDK::Domain::Payment::Payment.new_from_hash(e)
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
