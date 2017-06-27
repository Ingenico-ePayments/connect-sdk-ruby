#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/sessions/payment_product_filters_client_session'

module Ingenico::Connect::SDK
  module Domain
    module Sessions

      class SessionRequest < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Sessions::PaymentProductFiltersClientSession}
        attr_accessor :payment_product_filters

        # Array of String
        attr_accessor :tokens

        def to_h
          hash = super
          add_to_hash(hash, 'paymentProductFilters', @payment_product_filters)
          add_to_hash(hash, 'tokens', @tokens)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('paymentProductFilters')
            if !(hash['paymentProductFilters'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProductFilters']]
            end
            @payment_product_filters = Ingenico::Connect::SDK::Domain::Sessions::PaymentProductFiltersClientSession.new_from_hash(hash['paymentProductFilters'])
          end
          if hash.has_key?('tokens')
            if !(hash['tokens'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['tokens']]
            end
            @tokens = []
            hash['tokens'].each do |e|
              @tokens << e
            end
          end
        end
      end
    end
  end
end
