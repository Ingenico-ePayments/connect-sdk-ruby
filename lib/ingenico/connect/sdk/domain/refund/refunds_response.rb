#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/refund/refund_result'

module Ingenico::Connect::SDK
  module Domain
    module Refund

      # @attr [Array<Ingenico::Connect::SDK::Domain::Refund::RefundResult>] refunds
      class RefundsResponse < Ingenico::Connect::SDK::DataObject

        attr_accessor :refunds

        # @return (Hash)
        def to_h
          hash = super
          hash['refunds'] = @refunds.collect{|val| val.to_h} unless @refunds.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'refunds'
            raise TypeError, "value '%s' is not an Array" % [hash['refunds']] unless hash['refunds'].is_a? Array
            @refunds = []
            hash['refunds'].each do |e|
              @refunds << Ingenico::Connect::SDK::Domain::Refund::RefundResult.new_from_hash(e)
            end
          end
        end
      end
    end
  end
end
