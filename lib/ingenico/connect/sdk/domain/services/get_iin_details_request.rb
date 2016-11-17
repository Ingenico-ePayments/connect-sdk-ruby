#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/services/payment_context'

module Ingenico::Connect::SDK
  module Domain
    module Services

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_GetIINDetailsRequest GetIINDetailsRequest}
      class GetIINDetailsRequest < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :bin

        # {Ingenico::Connect::SDK::Domain::Services::PaymentContext}
        attr_accessor :payment_context

        def to_h
          hash = super
          add_to_hash(hash, 'bin', @bin)
          add_to_hash(hash, 'paymentContext', @payment_context)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('bin')
            @bin = hash['bin']
          end
          if hash.has_key?('paymentContext')
            if !(hash['paymentContext'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentContext']]
            end
            @payment_context = Ingenico::Connect::SDK::Domain::Services::PaymentContext.new_from_hash(hash['paymentContext'])
          end
        end
      end
    end
  end
end
