#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Hostedcheckout

      # @attr [String] interval
      # @attr [Integer] interval_frequency
      class Frequency < Ingenico::Connect::SDK::DataObject

        attr_accessor :interval

        attr_accessor :interval_frequency

        # @return (Hash)
        def to_h
          hash = super
          hash['interval'] = @interval unless @interval.nil?
          hash['intervalFrequency'] = @interval_frequency unless @interval_frequency.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'interval'
            @interval = hash['interval']
          end
          if hash.has_key? 'intervalFrequency'
            @interval_frequency = hash['intervalFrequency']
          end
        end
      end
    end
  end
end
