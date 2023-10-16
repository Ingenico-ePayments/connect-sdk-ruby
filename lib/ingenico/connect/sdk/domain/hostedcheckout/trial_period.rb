#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Hostedcheckout

      # @attr [Integer] duration
      # @attr [String] interval
      class TrialPeriod < Ingenico::Connect::SDK::DataObject

        attr_accessor :duration

        attr_accessor :interval

        # @return (Hash)
        def to_h
          hash = super
          hash['duration'] = @duration unless @duration.nil?
          hash['interval'] = @interval unless @interval.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'duration'
            @duration = hash['duration']
          end
          if hash.has_key? 'interval'
            @interval = hash['interval']
          end
        end
      end
    end
  end
end
