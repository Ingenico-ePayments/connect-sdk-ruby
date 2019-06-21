#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/services/payment_context'

module Ingenico::Connect::SDK
  module Domain
    module Services

      # @attr [String] bin
      # @attr [Ingenico::Connect::SDK::Domain::Services::PaymentContext] payment_context
      class GetIINDetailsRequest < Ingenico::Connect::SDK::DataObject

        attr_accessor :bin

        attr_accessor :payment_context

        # @return (Hash)
        def to_h
          hash = super
          hash['bin'] = @bin unless @bin.nil?
          hash['paymentContext'] = @payment_context.to_h unless @payment_context.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'bin'
            @bin = hash['bin']
          end
          if hash.has_key? 'paymentContext'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentContext']] unless hash['paymentContext'].is_a? Hash
            @payment_context = Ingenico::Connect::SDK::Domain::Services::PaymentContext.new_from_hash(hash['paymentContext'])
          end
        end
      end
    end
  end
end
