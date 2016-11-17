#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/hostedcheckout/created_payment_output'

module Ingenico::Connect::SDK
  module Domain
    module Hostedcheckout

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_GetHostedCheckoutResponse GetHostedCheckoutResponse}
      class GetHostedCheckoutResponse < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Hostedcheckout::CreatedPaymentOutput}
        attr_accessor :created_payment_output

        # String
        attr_accessor :status

        def to_h
          hash = super
          add_to_hash(hash, 'createdPaymentOutput', @created_payment_output)
          add_to_hash(hash, 'status', @status)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('createdPaymentOutput')
            if !(hash['createdPaymentOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['createdPaymentOutput']]
            end
            @created_payment_output = Ingenico::Connect::SDK::Domain::Hostedcheckout::CreatedPaymentOutput.new_from_hash(hash['createdPaymentOutput'])
          end
          if hash.has_key?('status')
            @status = hash['status']
          end
        end
      end
    end
  end
end
