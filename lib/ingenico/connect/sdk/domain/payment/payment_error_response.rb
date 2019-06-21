#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/errors/api_error'
require 'ingenico/connect/sdk/domain/payment/create_payment_result'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] error_id
      # @attr [Array<Ingenico::Connect::SDK::Domain::Errors::APIError>] errors
      # @attr [Ingenico::Connect::SDK::Domain::Payment::CreatePaymentResult] payment_result
      class PaymentErrorResponse < Ingenico::Connect::SDK::DataObject

        attr_accessor :error_id

        attr_accessor :errors

        attr_accessor :payment_result

        # @return (Hash)
        def to_h
          hash = super
          hash['errorId'] = @error_id unless @error_id.nil?
          hash['errors'] = @errors.collect{|val| val.to_h} unless @errors.nil?
          hash['paymentResult'] = @payment_result.to_h unless @payment_result.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'errorId'
            @error_id = hash['errorId']
          end
          if hash.has_key? 'errors'
            raise TypeError, "value '%s' is not an Array" % [hash['errors']] unless hash['errors'].is_a? Array
            @errors = []
            hash['errors'].each do |e|
              @errors << Ingenico::Connect::SDK::Domain::Errors::APIError.new_from_hash(e)
            end
          end
          if hash.has_key? 'paymentResult'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentResult']] unless hash['paymentResult'].is_a? Hash
            @payment_result = Ingenico::Connect::SDK::Domain::Payment::CreatePaymentResult.new_from_hash(hash['paymentResult'])
          end
        end
      end
    end
  end
end
