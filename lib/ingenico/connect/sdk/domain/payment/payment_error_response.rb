#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/errors/api_error'
require 'ingenico/connect/sdk/domain/payment/create_payment_result'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PaymentErrorResponse PaymentErrorResponse}
      class PaymentErrorResponse < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :error_id

        # Array of {Ingenico::Connect::SDK::Domain::Errors::APIError}
        attr_accessor :errors

        # {Ingenico::Connect::SDK::Domain::Payment::CreatePaymentResult}
        attr_accessor :payment_result

        def to_h
          hash = super
          add_to_hash(hash, 'errorId', @error_id)
          add_to_hash(hash, 'errors', @errors)
          add_to_hash(hash, 'paymentResult', @payment_result)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('errorId')
            @error_id = hash['errorId']
          end
          if hash.has_key?('errors')
            if !(hash['errors'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['errors']]
            end
            @errors = []
            hash['errors'].each do |e|
              @errors << Ingenico::Connect::SDK::Domain::Errors::APIError.new_from_hash(e)
            end
          end
          if hash.has_key?('paymentResult')
            if !(hash['paymentResult'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentResult']]
            end
            @payment_result = Ingenico::Connect::SDK::Domain::Payment::CreatePaymentResult.new_from_hash(hash['paymentResult'])
          end
        end
      end
    end
  end
end
