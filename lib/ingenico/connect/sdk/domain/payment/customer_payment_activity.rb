#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class CustomerPaymentActivity < Ingenico::Connect::SDK::DataObject

        # Integer
        attr_accessor :number_of_payment_attempts_last24_hours

        # Integer
        attr_accessor :number_of_payment_attempts_last_year

        # Integer
        attr_accessor :number_of_purchases_last6_months

        def to_h
          hash = super
          add_to_hash(hash, 'numberOfPaymentAttemptsLast24Hours', @number_of_payment_attempts_last24_hours)
          add_to_hash(hash, 'numberOfPaymentAttemptsLastYear', @number_of_payment_attempts_last_year)
          add_to_hash(hash, 'numberOfPurchasesLast6Months', @number_of_purchases_last6_months)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('numberOfPaymentAttemptsLast24Hours')
            @number_of_payment_attempts_last24_hours = hash['numberOfPaymentAttemptsLast24Hours']
          end
          if hash.has_key?('numberOfPaymentAttemptsLastYear')
            @number_of_payment_attempts_last_year = hash['numberOfPaymentAttemptsLastYear']
          end
          if hash.has_key?('numberOfPurchasesLast6Months')
            @number_of_purchases_last6_months = hash['numberOfPurchasesLast6Months']
          end
        end
      end
    end
  end
end
